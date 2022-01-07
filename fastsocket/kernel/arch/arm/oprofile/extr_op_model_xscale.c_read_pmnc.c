
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ id; } ;


 scalar_t__ PMU_XSC1 ;
 TYPE_1__* pmu ;

__attribute__((used)) static u32 read_pmnc(void)
{
 u32 val;

 if (pmu->id == PMU_XSC1)
  __asm__ __volatile__ ("mrc p14, 0, %0, c0, c0, 0" : "=r" (val));
 else {
  __asm__ __volatile__ ("mrc p14, 0, %0, c0, c1, 0" : "=r" (val));

  val &= 0xff000009;
 }

 return val;
}
