
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int encoding; int crc_type; int preamble; int preamble_length; int flags; int clock_speed; scalar_t__ loopback; } ;
struct slgt_info {int if_mode; TYPE_1__ params; } ;


 unsigned short BIT0 ;
 unsigned short BIT1 ;
 unsigned short BIT10 ;
 unsigned short BIT11 ;
 unsigned short BIT12 ;
 unsigned short BIT13 ;
 unsigned short BIT14 ;
 unsigned short BIT15 ;
 unsigned short BIT2 ;
 unsigned short BIT3 ;
 unsigned short BIT4 ;
 unsigned short BIT5 ;
 unsigned short BIT6 ;
 unsigned short BIT7 ;
 unsigned short BIT8 ;
 unsigned short BIT9 ;
 int CCR ;


 int HDLC_CRC_MASK ;







 int HDLC_FLAG_AUTO_CTS ;
 int HDLC_FLAG_AUTO_DCD ;
 int HDLC_FLAG_RXC_BRG ;
 int HDLC_FLAG_RXC_DPLL ;
 int HDLC_FLAG_RXC_TXCPIN ;
 int HDLC_FLAG_TXC_BRG ;
 int HDLC_FLAG_TXC_DPLL ;
 int HDLC_FLAG_TXC_RXCPIN ;






 int HDLC_PREAMBLE_PATTERN_NONE ;


 int IRQ_ALL ;
 int IRQ_MASTER ;
 int MGSL_INTERFACE_RTS_EN ;



 int RCR ;
 int SCR ;
 int TCR ;
 int TPR ;
 int enable_loopback (struct slgt_info*) ;
 int msc_set_vcr (struct slgt_info*) ;
 unsigned short rd_reg16 (struct slgt_info*,int ) ;
 int rx_stop (struct slgt_info*) ;
 int set_rate (struct slgt_info*,int) ;
 int slgt_irq_off (struct slgt_info*,int) ;
 int tx_set_idle (struct slgt_info*) ;
 int tx_stop (struct slgt_info*) ;
 int wr_reg16 (struct slgt_info*,int ,unsigned short) ;
 int wr_reg8 (struct slgt_info*,int ,unsigned char) ;

__attribute__((used)) static void sync_mode(struct slgt_info *info)
{
 unsigned short val;

 slgt_irq_off(info, IRQ_ALL | IRQ_MASTER);
 tx_stop(info);
 rx_stop(info);
 val = BIT2;

 switch(info->params.mode) {
 case 129: val |= BIT14 + BIT13; break;
 case 130: val |= BIT15; break;
 case 128: val |= BIT13; break;
 }
 if (info->if_mode & MGSL_INTERFACE_RTS_EN)
  val |= BIT7;

 switch(info->params.encoding)
 {
 case 141: val |= BIT10; break;
 case 139: val |= BIT11; break;
 case 140: val |= BIT11 + BIT10; break;
 case 144: val |= BIT12; break;
 case 143: val |= BIT12 + BIT10; break;
 case 145: val |= BIT12 + BIT11; break;
 case 142: val |= BIT12 + BIT11 + BIT10; break;
 }

 switch (info->params.crc_type & HDLC_CRC_MASK)
 {
 case 147: val |= BIT9; break;
 case 146: val |= BIT9 + BIT8; break;
 }

 if (info->params.preamble != HDLC_PREAMBLE_PATTERN_NONE)
  val |= BIT6;

 switch (info->params.preamble_length)
 {
 case 138: val |= BIT5; break;
 case 137: val |= BIT4; break;
 case 136: val |= BIT5 + BIT4; break;
 }

 if (info->params.flags & HDLC_FLAG_AUTO_CTS)
  val |= BIT0;

 wr_reg16(info, TCR, val);



 switch (info->params.preamble)
 {
 case 133: val = 0x7e; break;
 case 132: val = 0xff; break;
 case 131: val = 0x00; break;
 case 134: val = 0x55; break;
 case 135: val = 0xaa; break;
 default: val = 0x7e; break;
 }
 wr_reg8(info, TPR, (unsigned char)val);
 val = 0;

 switch(info->params.mode) {
 case 129: val |= BIT14 + BIT13; break;
 case 130: val |= BIT15; break;
 case 128: val |= BIT13; break;
 }

 switch(info->params.encoding)
 {
 case 141: val |= BIT10; break;
 case 139: val |= BIT11; break;
 case 140: val |= BIT11 + BIT10; break;
 case 144: val |= BIT12; break;
 case 143: val |= BIT12 + BIT10; break;
 case 145: val |= BIT12 + BIT11; break;
 case 142: val |= BIT12 + BIT11 + BIT10; break;
 }

 switch (info->params.crc_type & HDLC_CRC_MASK)
 {
 case 147: val |= BIT9; break;
 case 146: val |= BIT9 + BIT8; break;
 }

 if (info->params.flags & HDLC_FLAG_AUTO_DCD)
  val |= BIT0;

 wr_reg16(info, RCR, val);
 val = 0;

 if (info->params.flags & HDLC_FLAG_TXC_BRG)
 {



  if (info->params.flags & HDLC_FLAG_RXC_DPLL)
   val |= BIT6 + BIT5;
  else
   val |= BIT6;
 }
 else if (info->params.flags & HDLC_FLAG_TXC_DPLL)
  val |= BIT7;
 else if (info->params.flags & HDLC_FLAG_TXC_RXCPIN)
  val |= BIT5;

 if (info->params.flags & HDLC_FLAG_RXC_BRG)
  val |= BIT3;
 else if (info->params.flags & HDLC_FLAG_RXC_DPLL)
  val |= BIT4;
 else if (info->params.flags & HDLC_FLAG_RXC_TXCPIN)
  val |= BIT2;

 if (info->params.clock_speed)
  val |= BIT1 + BIT0;

 wr_reg8(info, CCR, (unsigned char)val);

 if (info->params.flags & (HDLC_FLAG_TXC_DPLL + HDLC_FLAG_RXC_DPLL))
 {

  switch(info->params.encoding)
  {
  case 144:
  case 143:
   val = BIT7; break;
  case 145:
  case 142:
   val = BIT7 + BIT6; break;
  default: val = BIT6;
  }
  wr_reg16(info, RCR, (unsigned short)(rd_reg16(info, RCR) | val));


  set_rate(info, info->params.clock_speed * 16);
 }
 else
  set_rate(info, info->params.clock_speed);

 tx_set_idle(info);

 msc_set_vcr(info);
 wr_reg16(info, SCR, BIT15 + BIT14 + BIT0);

 if (info->params.loopback)
  enable_loopback(info);
}
