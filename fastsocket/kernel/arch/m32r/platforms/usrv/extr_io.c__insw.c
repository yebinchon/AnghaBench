
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CFC_IOEND ;
 unsigned int CFC_IOSTART ;
 unsigned short* PORT2ADDR (unsigned int) ;
 int pcc_ioread_word (int ,unsigned int,void*,int,unsigned long,int) ;

void _insw(unsigned int port, void * addr, unsigned long count)
{
 unsigned short *buf = addr;
 unsigned short *portp;

 if (port >= CFC_IOSTART && port <= CFC_IOEND)
  pcc_ioread_word(0, port, addr, sizeof(unsigned short), count,
   1);
 else {
  portp = PORT2ADDR(port);
  while (count--)
   *buf++ = *(volatile unsigned short *)portp;
 }
}
