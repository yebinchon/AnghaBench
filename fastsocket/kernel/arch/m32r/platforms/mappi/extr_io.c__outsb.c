
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int M32R_PCC_IOEND0 ;
 unsigned int M32R_PCC_IOEND1 ;
 unsigned int M32R_PCC_IOSTART0 ;
 unsigned int M32R_PCC_IOSTART1 ;
 unsigned char* PORT2ADDR (unsigned int) ;
 unsigned char* PORT2ADDR_NE (unsigned int) ;
 int _ne_outb (int ,unsigned char*) ;
 int pcc_iowrite (int,unsigned int,void*,int,unsigned long,int) ;

void _outsb(unsigned int port, const void *addr, unsigned long count)
{
 const unsigned char *buf = addr;
 unsigned char *portp;

 if (port >= 0x300 && port < 0x320) {
  portp = PORT2ADDR_NE(port);
  while (count--)
   _ne_outb(*buf++, portp);
 } else {
  portp = PORT2ADDR(port);
  while (count--)
   *(volatile unsigned char *)portp = *buf++;
 }
}
