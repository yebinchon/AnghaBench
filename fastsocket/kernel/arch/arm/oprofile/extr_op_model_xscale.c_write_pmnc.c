
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ id; } ;


 scalar_t__ PMU_XSC1 ;
 TYPE_1__* pmu ;

__attribute__((used)) static void write_pmnc(u32 val)
{
 if (pmu->id == PMU_XSC1) {

  val &= 0xffff77f;
  __asm__ __volatile__ ("mcr p14, 0, %0, c0, c0, 0" : : "r" (val));
 } else {

  val &= 0xf;
  __asm__ __volatile__ ("mcr p14, 0, %0, c0, c1, 0" : : "r" (val));
 }
}
