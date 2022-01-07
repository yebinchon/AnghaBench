
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EISA_bus ;
 int cpu_to_le32 (unsigned int) ;
 int eisa_permute (unsigned short) ;
 int gsc_writel (int ,int ) ;

void eisa_out32(unsigned int data, unsigned short port)
{
 if (EISA_bus)
  gsc_writel(cpu_to_le32(data), eisa_permute(port));
}
