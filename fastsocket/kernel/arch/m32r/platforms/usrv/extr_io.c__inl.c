
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int l ;


 unsigned long CFC_IOEND ;
 unsigned long CFC_IOSTART ;
 scalar_t__ PORT2ADDR (unsigned long) ;
 int pcc_ioread_word (int ,unsigned long,unsigned long*,int,int,int ) ;

unsigned long _inl(unsigned long port)
{
 if (port >= CFC_IOSTART && port <= CFC_IOEND) {
  unsigned long l;
  pcc_ioread_word(0, port, &l, sizeof(l), 1, 0);
  return l;
 } else
  return *(volatile unsigned long *)PORT2ADDR(port);
}
