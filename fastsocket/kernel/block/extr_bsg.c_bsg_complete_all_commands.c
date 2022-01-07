
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsg_device {int lock; int queued_cmds; int name; } ;
struct bsg_command {int bidi_bio; int bio; int hdr; int rq; } ;


 int ENODATA ;
 scalar_t__ IS_ERR (struct bsg_command*) ;
 int blk_complete_sgv4_hdr_rq (int ,int *,int ,int ) ;
 int bsg_free_command (struct bsg_command*) ;
 struct bsg_command* bsg_get_done_cmd (struct bsg_device*) ;
 int bsg_io_schedule (struct bsg_device*) ;
 int dprintk (char*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int bsg_complete_all_commands(struct bsg_device *bd)
{
 struct bsg_command *bc;
 int ret, tret;

 dprintk("%s: entered\n", bd->name);




 ret = 0;
 do {
  ret = bsg_io_schedule(bd);







 } while (ret != -ENODATA);




 ret = 0;
 do {
  spin_lock_irq(&bd->lock);
  if (!bd->queued_cmds) {
   spin_unlock_irq(&bd->lock);
   break;
  }
  spin_unlock_irq(&bd->lock);

  bc = bsg_get_done_cmd(bd);
  if (IS_ERR(bc))
   break;

  tret = blk_complete_sgv4_hdr_rq(bc->rq, &bc->hdr, bc->bio,
      bc->bidi_bio);
  if (!ret)
   ret = tret;

  bsg_free_command(bc);
 } while (1);

 return ret;
}
