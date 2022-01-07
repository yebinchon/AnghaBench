
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EISA_bus ;
 int cpu_to_le16 (unsigned short) ;
 int eisa_permute (unsigned short) ;
 int gsc_writew (int ,int ) ;

void eisa_out16(unsigned short data, unsigned short port)
{
 if (EISA_bus)
  gsc_writew(cpu_to_le16(data), eisa_permute(port));
}
