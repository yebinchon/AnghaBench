
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int flags; scalar_t__ mode; int preamble; int addr_filter; int encoding; int crc_type; int clock_speed; int preamble_length; } ;
struct mgsl_struct {int cmr_value; scalar_t__ bus_type; int tcsr_value; int mbre_bit; TYPE_1__ params; int io_base; } ;


 int BDCR ;
 int BIT10 ;
 int BIT11 ;
 int BIT12 ;
 int BIT13 ;
 int BIT14 ;
 int BIT15 ;
 int BIT3 ;
 int BIT4 ;
 int BIT8 ;
 int BIT9 ;
 int CCR ;
 int CCSR ;
 int CDIR ;
 int CMCR ;
 int CMR ;
 int DCR ;
 int DICR ;
 int DmaCmd_ResetAllChannels ;
 int HCR ;
 int HDLC_CRC_16_CCITT ;
 int HDLC_CRC_32_CCITT ;
 int HDLC_CRC_MASK ;
 int HDLC_FLAG_AUTO_CTS ;
 int HDLC_FLAG_DPLL_DIV16 ;
 int HDLC_FLAG_DPLL_DIV8 ;
 int HDLC_FLAG_HDLC_LOOPMODE ;
 int HDLC_FLAG_RXC_BRG ;
 int HDLC_FLAG_RXC_DPLL ;
 int HDLC_FLAG_RXC_TXCPIN ;
 int HDLC_FLAG_SHARE_ZERO ;
 int HDLC_FLAG_TXC_BRG ;
 int HDLC_FLAG_TXC_DPLL ;
 int HDLC_FLAG_TXC_RXCPIN ;
 int HDLC_FLAG_UNDERRUN_ABORT15 ;
 int HDLC_FLAG_UNDERRUN_CRC ;
 int HDLC_FLAG_UNDERRUN_FLAG ;






 int HDLC_PREAMBLE_PATTERN_NONE ;

 int IOCR ;
 int IUSC_PRE_SL1660 ;
 scalar_t__ MGSL_BUS_TYPE_ISA ;
 scalar_t__ MGSL_BUS_TYPE_PCI ;
 scalar_t__ MGSL_MODE_HDLC ;
 scalar_t__ MGSL_MODE_RAW ;
 scalar_t__ MISC ;
 int PCR ;
 int RCLR ;
 int RCLRVALUE ;
 int RCmd_SelectRicrdma_level ;
 int RDMR ;
 scalar_t__ RECEIVE_DATA ;
 scalar_t__ RECEIVE_STATUS ;
 int RICR ;
 int RMR ;
 int RSR ;
 int RXSTATUS_ALL ;
 int SICR ;
 int SICR_CTS_INACTIVE ;
 int TC1R ;
 int TCSR ;
 int TCSR_UNDERWAIT ;
 int TCmd_SelectTicrdma_level ;
 int TDMR ;
 int TICR ;
 int TMCR ;
 int TMDR ;
 int TMR ;
 scalar_t__ TRANSMIT_DATA ;
 scalar_t__ TRANSMIT_STATUS ;
 int TXSTATUS_ALL ;
 int outw (int,int ) ;
 int usc_ClearIrqPendingBits (struct mgsl_struct*,scalar_t__) ;
 int usc_DmaCmd (struct mgsl_struct*,int ) ;
 int usc_EnableInterrupts (struct mgsl_struct*,scalar_t__) ;
 int usc_EnableMasterIrqBit (struct mgsl_struct*) ;
 int usc_InDmaReg (struct mgsl_struct*,int ) ;
 int usc_InReg (struct mgsl_struct*,int ) ;
 int usc_OutDmaReg (struct mgsl_struct*,int ,int) ;
 int usc_OutReg (struct mgsl_struct*,int ,int) ;
 int usc_RCmd (struct mgsl_struct*,int ) ;
 int usc_TCmd (struct mgsl_struct*,int ) ;
 int usc_UnlatchRxstatusBits (struct mgsl_struct*,int ) ;
 int usc_UnlatchTxstatusBits (struct mgsl_struct*,int ) ;
 int usc_set_txidle (struct mgsl_struct*) ;
 int usc_stop_receiver (struct mgsl_struct*) ;
 int usc_stop_transmitter (struct mgsl_struct*) ;

__attribute__((used)) static void usc_set_sdlc_mode( struct mgsl_struct *info )
{
 u16 RegValue;
 bool PreSL1660;
 usc_OutReg(info,TMCR,0x1f);
 RegValue=usc_InReg(info,TMDR);
 PreSL1660 = (RegValue == IUSC_PRE_SL1660);

  if ( info->params.flags & HDLC_FLAG_HDLC_LOOPMODE )
  {
     RegValue = 0x8e06;





  }
  else
  {
  if (info->params.mode == MGSL_MODE_RAW) {
   RegValue = 0x0001;

   usc_OutReg( info, IOCR,
    (unsigned short)((usc_InReg(info, IOCR) & ~(BIT13|BIT12)) | BIT12));
   RegValue |= 0x0400;
  }
  else {

  RegValue = 0x0606;

  if ( info->params.flags & HDLC_FLAG_UNDERRUN_ABORT15 )
   RegValue |= BIT14;
  else if ( info->params.flags & HDLC_FLAG_UNDERRUN_FLAG )
   RegValue |= BIT15;
  else if ( info->params.flags & HDLC_FLAG_UNDERRUN_CRC )
   RegValue |= BIT15 + BIT14;
  }

  if ( info->params.preamble != HDLC_PREAMBLE_PATTERN_NONE )
   RegValue |= BIT13;
 }

 if ( info->params.mode == MGSL_MODE_HDLC &&
  (info->params.flags & HDLC_FLAG_SHARE_ZERO) )
  RegValue |= BIT12;

 if ( info->params.addr_filter != 0xff )
 {

  usc_OutReg( info, RSR, info->params.addr_filter );
  RegValue |= BIT4;
 }

 usc_OutReg( info, CMR, RegValue );
 info->cmr_value = RegValue;
 RegValue = 0x0500;

 switch ( info->params.encoding ) {
 case 137: RegValue |= BIT13; break;
 case 136: RegValue |= BIT14; break;
 case 135: RegValue |= BIT14 + BIT13; break;
 case 141: RegValue |= BIT15; break;
 case 140: RegValue |= BIT15 + BIT13; break;
 case 142: RegValue |= BIT15 + BIT14; break;
 case 139: RegValue |= BIT15 + BIT14 + BIT13; break;
 }

 if ( (info->params.crc_type & HDLC_CRC_MASK) == HDLC_CRC_16_CCITT )
  RegValue |= BIT9;
 else if ( (info->params.crc_type & HDLC_CRC_MASK) == HDLC_CRC_32_CCITT )
  RegValue |= ( BIT12 | BIT10 | BIT9 );

 usc_OutReg( info, RMR, RegValue );
 usc_OutReg( info, RCLR, RCLRVALUE );

 usc_RCmd( info, RCmd_SelectRicrdma_level );
 RegValue = usc_InReg( info, RICR ) & 0xc0;

 if ( info->bus_type == MGSL_BUS_TYPE_PCI )
  usc_OutReg( info, RICR, (u16)(0x030a | RegValue) );
 else
  usc_OutReg( info, RICR, (u16)(0x140a | RegValue) );



 usc_UnlatchRxstatusBits( info, RXSTATUS_ALL );
 usc_ClearIrqPendingBits( info, RECEIVE_STATUS );
 RegValue = 0x0400;

 switch ( info->params.encoding ) {
 case 137: RegValue |= BIT13; break;
 case 136: RegValue |= BIT14; break;
 case 135: RegValue |= BIT14 + BIT13; break;
 case 141: RegValue |= BIT15; break;
 case 140: RegValue |= BIT15 + BIT13; break;
 case 142: RegValue |= BIT15 + BIT14; break;
 case 139: RegValue |= BIT15 + BIT14 + BIT13; break;
 }

 if ( (info->params.crc_type & HDLC_CRC_MASK) == HDLC_CRC_16_CCITT )
  RegValue |= BIT9 + BIT8;
 else if ( (info->params.crc_type & HDLC_CRC_MASK) == HDLC_CRC_32_CCITT )
  RegValue |= ( BIT12 | BIT10 | BIT9 | BIT8);

 usc_OutReg( info, TMR, RegValue );

 usc_set_txidle( info );


 usc_TCmd( info, TCmd_SelectTicrdma_level );
 if ( info->bus_type == MGSL_BUS_TYPE_PCI )
  usc_OutReg( info, TICR, 0x0736 );
 else
  usc_OutReg( info, TICR, 0x1436 );

 usc_UnlatchTxstatusBits( info, TXSTATUS_ALL );
 usc_ClearIrqPendingBits( info, TRANSMIT_STATUS );
 info->tcsr_value = 0;

 if ( !PreSL1660 )
  info->tcsr_value |= TCSR_UNDERWAIT;

 usc_OutReg( info, TCSR, info->tcsr_value );
 RegValue = 0x0f40;

 if ( info->params.flags & HDLC_FLAG_RXC_DPLL )
  RegValue |= 0x0003;
 else if ( info->params.flags & HDLC_FLAG_RXC_BRG )
  RegValue |= 0x0004;
  else if ( info->params.flags & HDLC_FLAG_RXC_TXCPIN)
   RegValue |= 0x0006;
 else
  RegValue |= 0x0007;

 if ( info->params.flags & HDLC_FLAG_TXC_DPLL )
  RegValue |= 0x0018;
 else if ( info->params.flags & HDLC_FLAG_TXC_BRG )
  RegValue |= 0x0020;
  else if ( info->params.flags & HDLC_FLAG_TXC_RXCPIN)
   RegValue |= 0x0038;
 else
  RegValue |= 0x0030;

 usc_OutReg( info, CMCR, RegValue );
 RegValue = 0x0000;

 if ( info->params.flags & (HDLC_FLAG_RXC_DPLL + HDLC_FLAG_TXC_DPLL) ) {
  u32 XtalSpeed;
  u32 DpllDivisor;
  u16 Tc;




  if ( info->bus_type == MGSL_BUS_TYPE_PCI )
   XtalSpeed = 11059200;
  else
   XtalSpeed = 14745600;

  if ( info->params.flags & HDLC_FLAG_DPLL_DIV16 ) {
   DpllDivisor = 16;
   RegValue |= BIT10;
  }
  else if ( info->params.flags & HDLC_FLAG_DPLL_DIV8 ) {
   DpllDivisor = 8;
   RegValue |= BIT11;
  }
  else
   DpllDivisor = 32;
   if ( info->params.clock_speed )
   {
   Tc = (u16)((XtalSpeed/DpllDivisor)/info->params.clock_speed);
   if ( !((((XtalSpeed/DpllDivisor) % info->params.clock_speed) * 2)
          / info->params.clock_speed) )
    Tc--;
   }
   else
    Tc = -1;



  usc_OutReg( info, TC1R, Tc );

  RegValue |= BIT4;

  switch ( info->params.encoding ) {
  case 138:
  case 137:
  case 136:
  case 135: RegValue |= BIT8; break;
  case 141:
  case 140: RegValue |= BIT9; break;
  case 142:
  case 139: RegValue |= BIT9 + BIT8; break;
  }
 }

 usc_OutReg( info, HCR, RegValue );
 usc_OutReg( info, CCSR, 0x1020 );


 if ( info->params.flags & HDLC_FLAG_AUTO_CTS ) {
  usc_OutReg( info, SICR,
       (u16)(usc_InReg(info,SICR) | SICR_CTS_INACTIVE) );
 }



 usc_EnableMasterIrqBit( info );

 usc_ClearIrqPendingBits( info, RECEIVE_STATUS + RECEIVE_DATA +
    TRANSMIT_STATUS + TRANSMIT_DATA + MISC);


 usc_OutReg(info, SICR, (u16)(usc_InReg(info,SICR) | BIT3));
 usc_EnableInterrupts(info, MISC);

 info->mbre_bit = 0;
 outw( 0, info->io_base );
 usc_DmaCmd( info, DmaCmd_ResetAllChannels );
 info->mbre_bit = BIT8;
 outw( BIT8, info->io_base );

 if (info->bus_type == MGSL_BUS_TYPE_ISA) {


  usc_OutReg(info, PCR, (u16)((usc_InReg(info, PCR) | BIT15) & ~BIT14));
 }
 if ( info->bus_type == MGSL_BUS_TYPE_PCI ) {

  usc_OutDmaReg( info, DCR, 0xa00b );
 }
 else
  usc_OutDmaReg( info, DCR, 0x800b );
 usc_OutDmaReg( info, RDMR, 0xf200 );
 usc_OutDmaReg( info, TDMR, 0xf200 );
 usc_OutDmaReg( info, DICR, 0x9000 );

 usc_InDmaReg( info, RDMR );
 usc_InDmaReg( info, TDMR );
 usc_OutDmaReg( info, CDIR, 0x0303 );
 RegValue = 0x8080;

 switch ( info->params.preamble_length ) {
 case 134: RegValue |= BIT10; break;
 case 133: RegValue |= BIT11; break;
 case 132: RegValue |= BIT11 + BIT10; break;
 }

 switch ( info->params.preamble ) {
 case 129: RegValue |= BIT8 + BIT12; break;
 case 128: RegValue |= BIT8; break;
 case 130: RegValue |= BIT9; break;
 case 131: RegValue |= BIT9 + BIT8; break;
 }

 usc_OutReg( info, CCR, RegValue );
 if ( info->bus_type == MGSL_BUS_TYPE_PCI ) {

  usc_OutDmaReg( info, BDCR, 0x0000 );
 }
 else
  usc_OutDmaReg( info, BDCR, 0x2000 );

 usc_stop_transmitter(info);
 usc_stop_receiver(info);

}
