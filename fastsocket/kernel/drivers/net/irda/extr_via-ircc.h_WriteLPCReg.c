
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (int,int) ;

__attribute__((used)) static void WriteLPCReg(int iRegNum, unsigned char iVal)
{

 outb(0x87, 0x2e);
 outb(0x87, 0x2e);
 outb(iRegNum, 0x2e);
 outb(iVal, 0x2f);
 outb(0xAA, 0x2e);
}
