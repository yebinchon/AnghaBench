
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ parity; int data_bits; int stop_bits; int flags; int data_rate; scalar_t__ loopback; } ;
struct slgt_info {int if_mode; int base_clock; TYPE_1__ params; } ;


 scalar_t__ ASYNC_PARITY_NONE ;
 scalar_t__ ASYNC_PARITY_ODD ;
 unsigned short BIT0 ;
 unsigned short BIT14 ;
 unsigned short BIT15 ;
 unsigned short BIT3 ;
 unsigned short BIT4 ;
 unsigned short BIT5 ;
 unsigned short BIT7 ;
 unsigned short BIT8 ;
 unsigned short BIT9 ;
 int CCR ;
 int HDLC_FLAG_AUTO_CTS ;
 int HDLC_FLAG_AUTO_DCD ;
 int IRQ_ALL ;
 int IRQ_MASTER ;
 int IRQ_RXBREAK ;
 int IRQ_RXOVER ;
 int JCR ;
 int MGSL_INTERFACE_RTS_EN ;
 int RCR ;
 int SCR ;
 int TCR ;
 int enable_loopback (struct slgt_info*) ;
 int msc_set_vcr (struct slgt_info*) ;
 unsigned short rd_reg32 (struct slgt_info*,int ) ;
 int rx_stop (struct slgt_info*) ;
 int set_rate (struct slgt_info*,int) ;
 int slgt_irq_off (struct slgt_info*,int) ;
 int slgt_irq_on (struct slgt_info*,int) ;
 int tx_stop (struct slgt_info*) ;
 int wr_reg16 (struct slgt_info*,int ,unsigned short) ;
 int wr_reg8 (struct slgt_info*,int ,int) ;

__attribute__((used)) static void async_mode(struct slgt_info *info)
{
   unsigned short val;

 slgt_irq_off(info, IRQ_ALL | IRQ_MASTER);
 tx_stop(info);
 rx_stop(info);
 val = 0x4000;

 if (info->if_mode & MGSL_INTERFACE_RTS_EN)
  val |= BIT7;

 if (info->params.parity != ASYNC_PARITY_NONE) {
  val |= BIT9;
  if (info->params.parity == ASYNC_PARITY_ODD)
   val |= BIT8;
 }

 switch (info->params.data_bits)
 {
 case 6: val |= BIT4; break;
 case 7: val |= BIT5; break;
 case 8: val |= BIT5 + BIT4; break;
 }

 if (info->params.stop_bits != 1)
  val |= BIT3;

 if (info->params.flags & HDLC_FLAG_AUTO_CTS)
  val |= BIT0;

 wr_reg16(info, TCR, val);
 val = 0x4000;

 if (info->params.parity != ASYNC_PARITY_NONE) {
  val |= BIT9;
  if (info->params.parity == ASYNC_PARITY_ODD)
   val |= BIT8;
 }

 switch (info->params.data_bits)
 {
 case 6: val |= BIT4; break;
 case 7: val |= BIT5; break;
 case 8: val |= BIT5 + BIT4; break;
 }

 if (info->params.flags & HDLC_FLAG_AUTO_DCD)
  val |= BIT0;

 wr_reg16(info, RCR, val);
 wr_reg8(info, CCR, 0x69);

 msc_set_vcr(info);
 val = BIT15 + BIT14 + BIT0;

 if ((rd_reg32(info, JCR) & BIT8) && info->params.data_rate &&
     ((info->base_clock < (info->params.data_rate * 16)) ||
      (info->base_clock % (info->params.data_rate * 16)))) {

  val |= BIT3;
  set_rate(info, info->params.data_rate * 8);
 } else {

  set_rate(info, info->params.data_rate * 16);
 }
 wr_reg16(info, SCR, val);

 slgt_irq_on(info, IRQ_RXBREAK | IRQ_RXOVER);

 if (info->params.loopback)
  enable_loopback(info);
}
