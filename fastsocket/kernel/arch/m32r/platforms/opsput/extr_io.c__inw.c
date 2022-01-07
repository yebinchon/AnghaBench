
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
 unsigned short _ne_inw (int ) ;
 int pcc_ioread_word (int ,unsigned long,unsigned short*,int,int,int ) ;

unsigned short _inw(unsigned long port)
{
 if (port >= LAN_IOSTART && port < LAN_IOEND)
  return _ne_inw(PORT2ADDR_NE(port));
 return *(volatile unsigned short *)PORT2ADDR(port);
}
