
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long __pa (void*) ;

__attribute__((used)) static unsigned long
xp_pa_sn2(void *addr)
{
 return __pa(addr);
}
