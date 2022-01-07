
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_dmae_regs {int dummy; } ;
struct list_head {struct list_head* next; } ;
struct sh_dmae_chan {struct list_head ld_queue; } ;
struct TYPE_2__ {scalar_t__ mark; struct sh_dmae_regs hw; } ;


 scalar_t__ DESC_COMP ;
 int cpu_relax () ;
 scalar_t__ dmae_is_idle (struct sh_dmae_chan*) ;
 int dmae_set_reg (struct sh_dmae_chan*,struct sh_dmae_regs) ;
 int dmae_start (struct sh_dmae_chan*) ;
 TYPE_1__* to_sh_desc (struct list_head*) ;

__attribute__((used)) static void sh_chan_xfer_ld_queue(struct sh_dmae_chan *sh_chan)
{
 struct list_head *ld_node;
 struct sh_dmae_regs hw;


 if (dmae_is_idle(sh_chan))
  return;


 for (ld_node = sh_chan->ld_queue.next;
  (ld_node != &sh_chan->ld_queue)
   && (to_sh_desc(ld_node)->mark == DESC_COMP);
  ld_node = ld_node->next)
  cpu_relax();

 if (ld_node != &sh_chan->ld_queue) {

  hw = to_sh_desc(ld_node)->hw;
  dmae_set_reg(sh_chan, hw);
  dmae_start(sh_chan);
 }
}
