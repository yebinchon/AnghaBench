
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {int (* stc_writew ) (struct comedi_device*,unsigned short,int ) ;} ;


 unsigned short AI_SC_TC_Interrupt_Ack ;
 unsigned short AI_SC_TC_St ;
 unsigned short AI_START1_Interrupt_Ack ;
 unsigned short AI_START1_St ;
 unsigned short AI_START_Interrupt_Ack ;
 unsigned short AI_START_St ;
 unsigned short AI_STOP_Interrupt_Ack ;
 unsigned short AI_STOP_St ;
 int Interrupt_A_Ack_Register ;
 TYPE_1__* devpriv ;
 int stub1 (struct comedi_device*,unsigned short,int ) ;

__attribute__((used)) static void ack_a_interrupt(struct comedi_device *dev, unsigned short a_status)
{
 unsigned short ack = 0;

 if (a_status & AI_SC_TC_St) {
  ack |= AI_SC_TC_Interrupt_Ack;
 }
 if (a_status & AI_START1_St) {
  ack |= AI_START1_Interrupt_Ack;
 }
 if (a_status & AI_START_St) {
  ack |= AI_START_Interrupt_Ack;
 }
 if (a_status & AI_STOP_St) {

  ack |= AI_STOP_Interrupt_Ack ;
 }
 if (ack)
  devpriv->stc_writew(dev, ack, Interrupt_A_Ack_Register);
}
