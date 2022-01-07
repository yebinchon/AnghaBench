
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char inb (int) ;
 int outb (int,int) ;

__attribute__((used)) static unsigned char ReadLPCReg(int iRegNum)
{
 unsigned char iVal;

 outb(0x87, 0x2e);
 outb(0x87, 0x2e);
 outb(iRegNum, 0x2e);
 iVal = inb(0x2f);
 outb(0xaa, 0x2e);

 return iVal;
}
