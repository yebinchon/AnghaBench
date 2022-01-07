
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int stop_bits; int data_bits; scalar_t__ parity; int data_rate; scalar_t__ loopback; } ;
struct TYPE_13__ {int port_num; int serial_signals; unsigned char ie0_value; unsigned char ie1_value; unsigned char ie2_value; TYPE_2__ params; TYPE_1__** port_array; } ;
struct TYPE_11__ {unsigned char ctrlreg_value; } ;
typedef TYPE_3__ SLMP_INFO ;


 scalar_t__ ASYNC_PARITY_NONE ;
 scalar_t__ ASYNC_PARITY_ODD ;
 unsigned char BIT0 ;
 unsigned char BIT1 ;
 unsigned char BIT2 ;
 unsigned char BIT3 ;
 unsigned char BIT4 ;
 unsigned char BIT5 ;
 unsigned char BIT6 ;
 unsigned char BRKD ;
 int CTL ;
 int IE0 ;
 int IE1 ;
 int IE2 ;
 int MD0 ;
 int MD1 ;
 int MD2 ;
 unsigned char OVRN ;
 int RRC ;
 unsigned char RXINTE ;
 int RXS ;
 int SerialSignal_RTS ;
 int TRC0 ;
 int TRC1 ;
 unsigned char TXINTE ;
 int TXS ;
 int rx_stop (TYPE_3__*) ;
 int set_rate (TYPE_3__*,int) ;
 int tx_set_idle (TYPE_3__*) ;
 int tx_stop (TYPE_3__*) ;
 int write_control_reg (TYPE_3__*) ;
 int write_reg (TYPE_3__*,int ,unsigned char) ;

__attribute__((used)) static void async_mode(SLMP_INFO *info)
{

   unsigned char RegValue;

 tx_stop(info);
 rx_stop(info);
 RegValue = 0x00;
 if (info->params.stop_bits != 1)
  RegValue |= BIT1;
 write_reg(info, MD0, RegValue);
 RegValue = 0x40;
 switch (info->params.data_bits) {
 case 7: RegValue |= BIT4 + BIT2; break;
 case 6: RegValue |= BIT5 + BIT3; break;
 case 5: RegValue |= BIT5 + BIT4 + BIT3 + BIT2; break;
 }
 if (info->params.parity != ASYNC_PARITY_NONE) {
  RegValue |= BIT1;
  if (info->params.parity == ASYNC_PARITY_ODD)
   RegValue |= BIT0;
 }
 write_reg(info, MD1, RegValue);
 RegValue = 0x00;
 if (info->params.loopback)
  RegValue |= (BIT1 + BIT0);
 write_reg(info, MD2, RegValue);







 RegValue=BIT6;
 write_reg(info, RXS, RegValue);







 RegValue=BIT6;
 write_reg(info, TXS, RegValue);





 info->port_array[0]->ctrlreg_value |= (BIT0 << (info->port_num * 2));
 write_control_reg(info);

 tx_set_idle(info);






 write_reg(info, RRC, 0x00);






 write_reg(info, TRC0, 0x10);






 write_reg(info, TRC1, 0x1e);
 RegValue = 0x10;
 if (!(info->serial_signals & SerialSignal_RTS))
  RegValue |= 0x01;
 write_reg(info, CTL, RegValue);


 info->ie0_value |= TXINTE + RXINTE;
 write_reg(info, IE0, info->ie0_value);


 info->ie1_value = BRKD;
 write_reg(info, IE1, info->ie1_value);


 info->ie2_value = OVRN;
 write_reg(info, IE2, info->ie2_value);

 set_rate( info, info->params.data_rate * 16 );
}
