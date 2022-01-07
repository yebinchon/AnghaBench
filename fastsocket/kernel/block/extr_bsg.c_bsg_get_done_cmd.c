
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsg_device {int name; int done_cmds; int wq_done; int flags; } ;
struct bsg_command {int dummy; } ;


 int BSG_F_BLOCK ;
 int EAGAIN ;
 int ERESTARTSYS ;
 struct bsg_command* ERR_PTR (int ) ;
 struct bsg_command* bsg_next_done_cmd (struct bsg_device*) ;
 int dprintk (char*,int ,struct bsg_command*) ;
 int test_bit (int ,int *) ;
 int wait_event_interruptible (int ,int ) ;

__attribute__((used)) static struct bsg_command *bsg_get_done_cmd(struct bsg_device *bd)
{
 struct bsg_command *bc;
 int ret;

 do {
  bc = bsg_next_done_cmd(bd);
  if (bc)
   break;

  if (!test_bit(BSG_F_BLOCK, &bd->flags)) {
   bc = ERR_PTR(-EAGAIN);
   break;
  }

  ret = wait_event_interruptible(bd->wq_done, bd->done_cmds);
  if (ret) {
   bc = ERR_PTR(-ERESTARTSYS);
   break;
  }
 } while (1);

 dprintk("%s: returning done %p\n", bd->name, bc);

 return bc;
}
