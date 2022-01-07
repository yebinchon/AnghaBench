
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int w ;


 unsigned long LAN_IOEND ;
 unsigned long LAN_IOSTART ;
 unsigned long M32R_PCC_IOEND0 ;
 unsigned long M32R_PCC_IOSTART0 ;
 scalar_t__ PORT2ADDR (unsigned long) ;
 int PORT2ADDR_NE (unsigned long) ;
 scalar_t__ PORT2ADDR_USB (unsigned long) ;
 scalar_t__ __port2addr_ata (unsigned long) ;
 int _ne_outw (unsigned short,int ) ;
 int pcc_iowrite_word (int ,unsigned long,unsigned short*,int,int,int ) ;

void _outw(unsigned short w, unsigned long port)
{
 if (port >= LAN_IOSTART && port < LAN_IOEND)
  _ne_outw(w, PORT2ADDR_NE(port));
 else
  *(volatile unsigned short *)PORT2ADDR(port) = w;
}
