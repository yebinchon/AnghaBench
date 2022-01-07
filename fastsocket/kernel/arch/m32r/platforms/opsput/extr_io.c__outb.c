
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int b ;


 unsigned long LAN_IOEND ;
 unsigned long LAN_IOSTART ;
 unsigned long M32R_PCC_IOEND0 ;
 unsigned long M32R_PCC_IOSTART0 ;
 scalar_t__ PORT2ADDR (unsigned long) ;
 int PORT2ADDR_NE (unsigned long) ;
 scalar_t__ __port2addr_ata (unsigned long) ;
 int _ne_outb (unsigned char,int ) ;
 int pcc_iowrite_byte (int ,unsigned long,unsigned char*,int,int,int ) ;

void _outb(unsigned char b, unsigned long port)
{
 if (port >= LAN_IOSTART && port < LAN_IOEND)
  _ne_outb(b, PORT2ADDR_NE(port));
 else
  *(volatile unsigned char *)PORT2ADDR(port) = b;
}
