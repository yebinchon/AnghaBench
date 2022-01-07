
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;


 int I_ST_CT_0 ;
 int ResetChip (int ,int) ;
 int SetSIRBOF (int ,int) ;
 int SetSIREOF (int ,int) ;
 int WriteReg (int ,int ,int) ;

__attribute__((used)) static void InitCard(__u16 iobase)
{
 ResetChip(iobase, 5);
 WriteReg(iobase, I_ST_CT_0, 0x00);
 SetSIRBOF(iobase, 0xc0);
 SetSIREOF(iobase, 0xc1);
}
