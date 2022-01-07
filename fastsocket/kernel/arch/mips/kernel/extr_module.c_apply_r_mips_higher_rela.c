
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct module {int dummy; } ;
typedef scalar_t__ Elf_Addr ;



__attribute__((used)) static int apply_r_mips_higher_rela(struct module *me, u32 *location,
        Elf_Addr v)
{
 *location = (*location & 0xffff0000) |
             ((((long long) v + 0x80008000LL) >> 32) & 0xffff);

 return 0;
}
