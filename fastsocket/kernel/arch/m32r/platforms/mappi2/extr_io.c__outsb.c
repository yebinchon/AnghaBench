
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int LAN_IOEND ;
 unsigned int LAN_IOSTART ;
 unsigned int M32R_PCC_IOEND0 ;
 unsigned int M32R_PCC_IOSTART0 ;
 unsigned char* PORT2ADDR (unsigned int) ;
 unsigned char* PORT2ADDR_NE (unsigned int) ;
 unsigned char* __port2addr_ata (unsigned int) ;
 int _ne_outb (int ,unsigned char*) ;
 int pcc_iowrite_byte (int ,unsigned int,void*,int,unsigned long,int) ;

void _outsb(unsigned int port, const void * addr, unsigned long count)
{
 const unsigned char *buf = addr;
 unsigned char *portp;

 if (port >= LAN_IOSTART && port < LAN_IOEND) {
  portp = PORT2ADDR_NE(port);
  while (count--)
   _ne_outb(*buf++, portp);
 } else {
  portp = PORT2ADDR(port);
  while (count--)
   *(volatile unsigned char *)portp = *buf++;
 }
}
