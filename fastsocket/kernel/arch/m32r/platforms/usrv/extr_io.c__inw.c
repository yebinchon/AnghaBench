
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int w ;


 unsigned long CFC_IOEND ;
 unsigned long CFC_IOSTART ;
 scalar_t__ PORT2ADDR (unsigned long) ;
 int pcc_ioread_word (int ,unsigned long,unsigned short*,int,int,int ) ;

unsigned short _inw(unsigned long port)
{
 if (port >= CFC_IOSTART && port <= CFC_IOEND) {
  unsigned short w;
  pcc_ioread_word(0, port, &w, sizeof(w), 1, 0);
  return w;
 } else
  return *(volatile unsigned short *)PORT2ADDR(port);
}
