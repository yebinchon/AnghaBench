
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long vpa_call (int,unsigned long,int ) ;

__attribute__((used)) static inline long unregister_dtl(unsigned long cpu)
{
 return vpa_call(0x6, cpu, 0);
}
