
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long OLDMEM_BASE ;

__attribute__((used)) static inline unsigned long relocate(unsigned long addr)
{
 return OLDMEM_BASE + addr;
}
