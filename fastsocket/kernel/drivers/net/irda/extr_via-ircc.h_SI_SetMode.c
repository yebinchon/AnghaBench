
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef int __u16 ;


 int Rd_Indx (int ,int,int) ;
 int ResetDongle (int ) ;
 int SetSITmode (int ) ;
 int Wr_Indx (int ,int,int,int) ;
 int WriteLPCReg (int,int) ;
 int udelay (int) ;

__attribute__((used)) static void SI_SetMode(__u16 iobase, int mode)
{

 __u8 bTmp;

 WriteLPCReg(0x28, 0x70);
 SetSITmode(iobase);
 ResetDongle(iobase);
 udelay(10);
 Wr_Indx(iobase, 0x40, 0x0, 0x17);
 Wr_Indx(iobase, 0x40, 0x1, mode);
 Wr_Indx(iobase, 0x40, 0x2, 0xff);
 bTmp = Rd_Indx(iobase, 0x40, 1);
}
