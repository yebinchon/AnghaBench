
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int LAN_IOEND ;
 unsigned int LAN_IOSTART ;
 unsigned int M32R_PCC_IOEND0 ;
 unsigned int M32R_PCC_IOSTART0 ;
 unsigned short* PORT2ADDR (unsigned int) ;
 unsigned short* PORT2ADDR_NE (unsigned int) ;
 unsigned short* __port2addr_ata (unsigned int) ;
 int pcc_iowrite_word (int,unsigned int,void*,int,unsigned long,int) ;

void _outsw(unsigned int port, const void *addr, unsigned long count)
{
 const unsigned short *buf = addr;
 unsigned short *portp;

 if (port >= LAN_IOSTART && port < LAN_IOEND) {




  portp = PORT2ADDR_NE(port);
  while (count--)
   *(volatile unsigned short *)portp = *buf++;
 } else {
  portp = PORT2ADDR(port);
  while (count--)
   *(volatile unsigned short *)portp = *buf++;
 }
}
