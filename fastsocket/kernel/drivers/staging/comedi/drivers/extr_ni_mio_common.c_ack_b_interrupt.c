
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {int (* stc_writew ) (struct comedi_device*,unsigned short,int ) ;} ;


 unsigned short AO_BC_TC_Interrupt_Ack ;
 unsigned short AO_BC_TC_St ;
 unsigned short AO_Error_Interrupt_Ack ;
 unsigned short AO_Overrun_St ;
 unsigned short AO_START1_Interrupt_Ack ;
 unsigned short AO_START1_St ;
 unsigned short AO_START_Interrupt_Ack ;
 unsigned short AO_START_St ;
 unsigned short AO_UC_TC_Interrupt_Ack ;
 unsigned short AO_UC_TC_St ;
 unsigned short AO_UI2_TC_Interrupt_Ack ;
 unsigned short AO_UI2_TC_St ;
 unsigned short AO_UPDATE_Interrupt_Ack ;
 unsigned short AO_UPDATE_St ;
 int Interrupt_B_Ack_Register ;
 TYPE_1__* devpriv ;
 int stub1 (struct comedi_device*,unsigned short,int ) ;

__attribute__((used)) static void ack_b_interrupt(struct comedi_device *dev, unsigned short b_status)
{
 unsigned short ack = 0;
 if (b_status & AO_BC_TC_St) {
  ack |= AO_BC_TC_Interrupt_Ack;
 }
 if (b_status & AO_Overrun_St) {
  ack |= AO_Error_Interrupt_Ack;
 }
 if (b_status & AO_START_St) {
  ack |= AO_START_Interrupt_Ack;
 }
 if (b_status & AO_START1_St) {
  ack |= AO_START1_Interrupt_Ack;
 }
 if (b_status & AO_UC_TC_St) {
  ack |= AO_UC_TC_Interrupt_Ack;
 }
 if (b_status & AO_UI2_TC_St) {
  ack |= AO_UI2_TC_Interrupt_Ack;
 }
 if (b_status & AO_UPDATE_St) {
  ack |= AO_UPDATE_Interrupt_Ack;
 }
 if (ack)
  devpriv->stc_writew(dev, ack, Interrupt_B_Ack_Register);
}
