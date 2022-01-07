
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_13__ {int flags; scalar_t__ crc_type; int encoding; int clock_speed; scalar_t__ loopback; } ;
struct TYPE_14__ {int port_num; int buffer_list_phys; unsigned char ie0_value; int serial_signals; TYPE_2__ params; TYPE_1__** port_array; } ;
struct TYPE_12__ {int ctrlreg_value; } ;
typedef TYPE_3__ SLMP_INFO ;


 int BIT0 ;
 unsigned char BIT1 ;
 unsigned char BIT2 ;
 unsigned char BIT3 ;
 unsigned char BIT4 ;
 unsigned char BIT5 ;
 unsigned char BIT6 ;
 unsigned char BIT7 ;
 scalar_t__ CPB ;
 scalar_t__ CTL ;
 scalar_t__ DIR ;
 scalar_t__ DMR ;
 scalar_t__ HDLC_CRC_16_CCITT ;







 int HDLC_FLAG_AUTO_CTS ;
 int HDLC_FLAG_AUTO_DCD ;
 int HDLC_FLAG_DPLL_DIV16 ;
 int HDLC_FLAG_DPLL_DIV8 ;
 int HDLC_FLAG_RXC_BRG ;
 int HDLC_FLAG_RXC_DPLL ;
 int HDLC_FLAG_TXC_BRG ;
 int HDLC_FLAG_TXC_DPLL ;
 scalar_t__ IE0 ;
 scalar_t__ MD0 ;
 scalar_t__ MD1 ;
 scalar_t__ MD2 ;
 scalar_t__ RRC ;
 scalar_t__ RXDMA ;
 unsigned char RXINTE ;
 scalar_t__ RXS ;
 int SerialSignal_RTS ;
 scalar_t__ TRC0 ;
 scalar_t__ TRC1 ;
 scalar_t__ TXDMA ;
 unsigned char TXINTE ;
 scalar_t__ TXS ;
 int enable_loopback (TYPE_3__*,int) ;
 unsigned char rx_active_fifo_level ;
 int rx_stop (TYPE_3__*) ;
 int set_rate (TYPE_3__*,int) ;
 unsigned char tx_active_fifo_level ;
 int tx_negate_fifo_level ;
 int tx_set_idle (TYPE_3__*) ;
 int tx_stop (TYPE_3__*) ;
 int write_control_reg (TYPE_3__*) ;
 int write_reg (TYPE_3__*,scalar_t__,unsigned char) ;

__attribute__((used)) static void hdlc_mode(SLMP_INFO *info)
{
 unsigned char RegValue;
 u32 DpllDivisor;





 info->params.flags &= ~(HDLC_FLAG_TXC_DPLL + HDLC_FLAG_RXC_DPLL);


 write_reg(info, TXDMA + DIR, 0);
 write_reg(info, RXDMA + DIR, 0);
 RegValue = 0x81;
 if (info->params.flags & HDLC_FLAG_AUTO_CTS)
  RegValue |= BIT4;
 if (info->params.flags & HDLC_FLAG_AUTO_DCD)
  RegValue |= BIT4;
 if (info->params.crc_type == HDLC_CRC_16_CCITT)
  RegValue |= BIT2 + BIT1;
 write_reg(info, MD0, RegValue);
 RegValue = 0x00;
 write_reg(info, MD1, RegValue);
 RegValue = 0x00;
 switch(info->params.encoding) {
 case 129: RegValue |= BIT5; break;
 case 133: RegValue |= BIT7 + BIT5; break;
 case 132: RegValue |= BIT7 + BIT6; break;
 case 134: RegValue |= BIT7; break;





 }
 if ( info->params.flags & HDLC_FLAG_DPLL_DIV16 ) {
  DpllDivisor = 16;
  RegValue |= BIT3;
 } else if ( info->params.flags & HDLC_FLAG_DPLL_DIV8 ) {
  DpllDivisor = 8;
 } else {
  DpllDivisor = 32;
  RegValue |= BIT4;
 }
 write_reg(info, MD2, RegValue);
 RegValue=0;
 if (info->params.flags & HDLC_FLAG_RXC_BRG)
  RegValue |= BIT6;
 if (info->params.flags & HDLC_FLAG_RXC_DPLL)
  RegValue |= BIT6 + BIT5;
 write_reg(info, RXS, RegValue);







 RegValue=0;
 if (info->params.flags & HDLC_FLAG_TXC_BRG)
  RegValue |= BIT6;
 if (info->params.flags & HDLC_FLAG_TXC_DPLL)
  RegValue |= BIT6 + BIT5;
 write_reg(info, TXS, RegValue);

 if (info->params.flags & HDLC_FLAG_RXC_DPLL)
  set_rate(info, info->params.clock_speed * DpllDivisor);
 else
  set_rate(info, info->params.clock_speed);





 if (info->params.flags & HDLC_FLAG_TXC_BRG)
  info->port_array[0]->ctrlreg_value |= (BIT0 << (info->port_num * 2));
 else
  info->port_array[0]->ctrlreg_value &= ~(BIT0 << (info->port_num * 2));
 write_control_reg(info);






 write_reg(info, RRC, rx_active_fifo_level);






 write_reg(info, TRC0, tx_active_fifo_level);






 write_reg(info, TRC1, (unsigned char)(tx_negate_fifo_level - 1));
 write_reg(info, TXDMA + DMR, 0x14);
 write_reg(info, RXDMA + DMR, 0x14);


 write_reg(info, RXDMA + CPB,
  (unsigned char)(info->buffer_list_phys >> 16));


 write_reg(info, TXDMA + CPB,
  (unsigned char)(info->buffer_list_phys >> 16));




 info->ie0_value |= TXINTE + RXINTE;
 write_reg(info, IE0, info->ie0_value);
 RegValue = 0x10;
 if (!(info->serial_signals & SerialSignal_RTS))
  RegValue |= 0x01;
 write_reg(info, CTL, RegValue);



 tx_set_idle(info);
 tx_stop(info);
 rx_stop(info);

 set_rate(info, info->params.clock_speed);

 if (info->params.loopback)
  enable_loopback(info,1);
}
