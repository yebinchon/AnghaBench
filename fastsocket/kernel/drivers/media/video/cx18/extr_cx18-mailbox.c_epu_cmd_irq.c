
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmd; } ;
struct cx18_in_work_order {int rpu; TYPE_1__ mb; } ;
struct cx18 {int dummy; } ;






 int CX18_WARN (char*,int ) ;
 int epu_debug_irq (struct cx18*,struct cx18_in_work_order*) ;
 int epu_dma_done_irq (struct cx18*,struct cx18_in_work_order*) ;

__attribute__((used)) static inline
int epu_cmd_irq(struct cx18 *cx, struct cx18_in_work_order *order)
{
 int ret = -1;

 switch (order->rpu) {
 case 130:
 {
  switch (order->mb.cmd) {
  case 128:
   ret = epu_dma_done_irq(cx, order);
   break;
  case 129:
   ret = epu_debug_irq(cx, order);
   break;
  default:
   CX18_WARN("Unknown CPU to EPU mailbox command %#0x\n",
      order->mb.cmd);
   break;
  }
  break;
 }
 case 131:
  CX18_WARN("Unknown APU to EPU mailbox command %#0x\n",
     order->mb.cmd);
  break;
 default:
  break;
 }
 return ret;
}
