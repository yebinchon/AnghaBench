
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int l ;


 unsigned long M32R_PCC_IOEND0 ;
 unsigned long M32R_PCC_IOSTART0 ;
 scalar_t__ PORT2ADDR (unsigned long) ;
 int pcc_ioread_word (int ,unsigned long,unsigned long*,int,int,int ) ;

unsigned long _inl(unsigned long port)
{







 return *(volatile unsigned long *)PORT2ADDR(port);
}
