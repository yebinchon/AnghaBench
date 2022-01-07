
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KM_IRQ0 ;
 int kunmap_atomic (void*,int ) ;

__attribute__((used)) static inline void sg_kunmap_atomic(unsigned long addr)
{
 kunmap_atomic((void *)addr, KM_IRQ0);
}
