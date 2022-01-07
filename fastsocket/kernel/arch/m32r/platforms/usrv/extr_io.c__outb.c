
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int b ;


 unsigned long CFC_IOEND ;
 unsigned long CFC_IOSTART ;
 scalar_t__ PORT2ADDR (unsigned long) ;
 int pcc_iowrite_byte (int ,unsigned long,unsigned char*,int,int,int ) ;

void _outb(unsigned char b, unsigned long port)
{
 if (port >= CFC_IOSTART && port <= CFC_IOEND)
  pcc_iowrite_byte(0, port, &b, sizeof(b), 1, 0);
 else
  *(volatile unsigned char *)PORT2ADDR(port) = b;
}
