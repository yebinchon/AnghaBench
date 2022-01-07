
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EISA_bus ;
 int eisa_permute (unsigned short) ;
 int gsc_readl (int ) ;
 unsigned int le32_to_cpu (int ) ;

unsigned int eisa_in32(unsigned short port)
{
 if (EISA_bus)
  return le32_to_cpu(gsc_readl(eisa_permute(port)));
 return 0xffffffff;
}
