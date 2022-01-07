
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PMB_E_MASK ;
 unsigned int PMB_E_SHIFT ;

__attribute__((used)) static inline unsigned long mk_pmb_entry(unsigned int entry)
{
 return (entry & PMB_E_MASK) << PMB_E_SHIFT;
}
