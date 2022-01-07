
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long vpa_call (int,unsigned long,unsigned long) ;

__attribute__((used)) static inline long register_slb_shadow(unsigned long cpu, unsigned long vpa)
{
 return vpa_call(0x3, cpu, vpa);
}
