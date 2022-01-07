
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial_state {struct async_struct* info; int xmit_fifo_size; int flags; int port; int count; } ;
struct async_struct {int line; struct serial_state* state; int tlet; int xmit_fifo_size; int flags; int port; int magic; int delta_msr_wait; int close_wait; int open_wait; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SERIAL_MAGIC ;
 int do_softint ;
 int init_waitqueue_head (int *) ;
 int kfree (struct async_struct*) ;
 struct async_struct* kzalloc (int,int ) ;
 struct serial_state* rs_table ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int get_async_struct(int line, struct async_struct **ret_info)
{
 struct async_struct *info;
 struct serial_state *sstate;

 sstate = rs_table + line;
 sstate->count++;
 if (sstate->info) {
  *ret_info = sstate->info;
  return 0;
 }
 info = kzalloc(sizeof(struct async_struct), GFP_KERNEL);
 if (!info) {
  sstate->count--;
  return -ENOMEM;
 }





 info->magic = SERIAL_MAGIC;
 info->port = sstate->port;
 info->flags = sstate->flags;
 info->xmit_fifo_size = sstate->xmit_fifo_size;
 info->line = line;
 tasklet_init(&info->tlet, do_softint, (unsigned long)info);
 info->state = sstate;
 if (sstate->info) {
  kfree(info);
  *ret_info = sstate->info;
  return 0;
 }
 *ret_info = sstate->info = info;
 return 0;
}
