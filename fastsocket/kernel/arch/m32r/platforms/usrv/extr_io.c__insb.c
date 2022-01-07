
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CFC_IOEND ;
 unsigned int CFC_IOSTART ;
 unsigned char* PORT2ADDR (unsigned int) ;
 int pcc_ioread_byte (int ,unsigned int,void*,int,unsigned long,int) ;

void _insb(unsigned int port, void * addr, unsigned long count)
{
 if (port >= CFC_IOSTART && port <= CFC_IOEND)
  pcc_ioread_byte(0, port, addr, sizeof(unsigned char), count, 1);
 else {
  unsigned char *buf = addr;
  unsigned char *portp = PORT2ADDR(port);
  while (count--)
   *buf++ = *(volatile unsigned char *)portp;
 }
}
