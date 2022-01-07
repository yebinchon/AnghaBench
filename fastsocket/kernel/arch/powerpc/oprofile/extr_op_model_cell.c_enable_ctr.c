
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 size_t CBE_PM_CTR_ENABLE ;
 int cbe_write_pm07_control (size_t,size_t,size_t) ;

__attribute__((used)) static inline void enable_ctr(u32 cpu, u32 ctr, u32 *pm07_cntrl)
{

 pm07_cntrl[ctr] |= CBE_PM_CTR_ENABLE;
 cbe_write_pm07_control(cpu, ctr, pm07_cntrl[ctr]);
}
