
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int M32R_PCC_IOEND0 ;
 unsigned int M32R_PCC_IOEND1 ;
 unsigned int M32R_PCC_IOSTART0 ;
 unsigned int M32R_PCC_IOSTART1 ;
 unsigned short* PORT2ADDR (unsigned int) ;
 unsigned short* PORT2ADDR_NE (unsigned int) ;
 int _ne_inw (unsigned short*) ;
 int pcc_ioread (int,unsigned int,void*,int,unsigned long,int) ;

void _insw(unsigned int port, void *addr, unsigned long count)
{
 unsigned short *buf = addr;
 unsigned short *portp;

 if (port >= 0x300 && port < 0x320) {
  portp = PORT2ADDR_NE(port);
  while (count--)
   *buf++ = _ne_inw(portp);
 } else {
  portp = PORT2ADDR(port);
  while (count--)
   *buf++ = *(volatile unsigned short *)portp;
 }
}
