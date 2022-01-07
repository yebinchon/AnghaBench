
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ id; } ;


 scalar_t__ PMU_XSC1 ;
 int __xsc1_read_counter (int) ;
 int __xsc2_read_counter (int) ;
 TYPE_1__* pmu ;

__attribute__((used)) static u32 read_counter(int counter)
{
 u32 val;

 if (pmu->id == PMU_XSC1)
  val = __xsc1_read_counter(counter);
 else
  val = __xsc2_read_counter(counter);

 return val;
}
