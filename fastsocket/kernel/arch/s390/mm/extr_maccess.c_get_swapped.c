
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _lowcore {int dummy; } ;


 unsigned long store_prefix () ;

__attribute__((used)) static unsigned long get_swapped(unsigned long addr)
{
 unsigned long prefix = store_prefix();

 if (addr < sizeof(struct _lowcore))
  return addr + prefix;
 if (addr >= prefix && addr < prefix + sizeof(struct _lowcore))
  return addr - prefix;
 return addr;
}
