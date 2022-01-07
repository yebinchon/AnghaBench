
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;


 int EnRXFIFOHalfLevelInt (int ,int ) ;
 int EnRXFIFOReadyInt (int ,int ) ;
 int EnRXSpecInt (int ,int ) ;
 int EnTXFIFOHalfLevelInt (int ,int ) ;
 int EnTXFIFOUnderrunEOMInt (int ,int ) ;
 int EnableDMA (int ,int ) ;
 int I_ST_CT_0 ;
 int InvertRX (int ,int ) ;
 int InvertTX (int ,int ) ;
 scalar_t__ IsSIROn (int ) ;
 int OFF ;
 int ON ;
 int SIRFilter (int ,int ) ;
 int SIRRecvAny (int ,int ) ;
 int SetMaxRxPacketSize (int ,int) ;
 int SwapDMA (int ,int ) ;
 int WriteReg (int ,int ,int) ;

__attribute__((used)) static void CommonInit(__u16 iobase)
{

 SwapDMA(iobase, OFF);
 SetMaxRxPacketSize(iobase, 0x0fff);
 EnRXFIFOReadyInt(iobase, OFF);
 EnRXFIFOHalfLevelInt(iobase, OFF);
 EnTXFIFOHalfLevelInt(iobase, OFF);
 EnTXFIFOUnderrunEOMInt(iobase, ON);

 InvertTX(iobase, OFF);
 InvertRX(iobase, OFF);

 if (IsSIROn(iobase)) {
  SIRFilter(iobase, ON);
  SIRRecvAny(iobase, ON);
 } else {
  SIRFilter(iobase, OFF);
  SIRRecvAny(iobase, OFF);
 }
 EnRXSpecInt(iobase, ON);
 WriteReg(iobase, I_ST_CT_0, 0x80);
 EnableDMA(iobase, ON);
}
