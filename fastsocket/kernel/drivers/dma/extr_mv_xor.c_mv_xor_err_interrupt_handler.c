
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mv_xor_chan {int idx; TYPE_2__* device; } ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {TYPE_1__ common; } ;


 int BUG () ;
 int KERN_ERR ;
 int dev_dbg (int ,char*) ;
 int dev_printk (int ,int ,char*,int ,int) ;
 int mv_dump_xor_regs (struct mv_xor_chan*) ;

__attribute__((used)) static void mv_xor_err_interrupt_handler(struct mv_xor_chan *chan,
      u32 intr_cause)
{
 if (intr_cause & (1 << 4)) {
      dev_dbg(chan->device->common.dev,
       "ignore this error\n");
      return;
 }

 dev_printk(KERN_ERR, chan->device->common.dev,
     "error on chan %d. intr cause 0x%08x.\n",
     chan->idx, intr_cause);

 mv_dump_xor_regs(chan);
 BUG();
}
