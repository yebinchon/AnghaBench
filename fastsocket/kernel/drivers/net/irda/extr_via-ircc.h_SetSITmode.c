
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef int __u16 ;


 int ReadLPCReg (int) ;
 int ReadReg (int ,int) ;
 int WriteLPCReg (int,int) ;
 int WriteReg (int ,int,int) ;

__attribute__((used)) static void SetSITmode(__u16 iobase)
{

 __u8 bTmp;

 bTmp = ReadLPCReg(0x28);
 WriteLPCReg(0x28, bTmp | 0x10);
 bTmp = ReadReg(iobase, 0x35);
 WriteReg(iobase, 0x35, bTmp | 0x40);
 WriteReg(iobase, 0x28, bTmp | 0x80);
}
