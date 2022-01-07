
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ id; } ;


 scalar_t__ PMU_XSC1 ;
 int __xsc1_write_counter (int,int ) ;
 int __xsc2_write_counter (int,int ) ;
 TYPE_1__* pmu ;

__attribute__((used)) static void write_counter(int counter, u32 val)
{
 if (pmu->id == PMU_XSC1)
  __xsc1_write_counter(counter, val);
 else
  __xsc2_write_counter(counter, val);
}
