
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int b ;


 unsigned long M32R_PCC_IOEND0 ;
 unsigned long M32R_PCC_IOEND1 ;
 unsigned long M32R_PCC_IOSTART0 ;
 unsigned long M32R_PCC_IOSTART1 ;
 scalar_t__ PORT2ADDR (unsigned long) ;
 int PORT2ADDR_NE (unsigned long) ;
 unsigned char _ne_inb (int ) ;
 int pcc_ioread (int,unsigned long,unsigned char*,int,int,int ) ;

unsigned char _inb(unsigned long port)
{
 if (port >= 0x300 && port < 0x320)
  return _ne_inb(PORT2ADDR_NE(port));
 else
 return *(volatile unsigned char *)PORT2ADDR(port);
}
