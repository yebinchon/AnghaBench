
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int lbr_tos; } ;


 int rdmsrl (int ,int ) ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static inline u64 intel_pmu_lbr_tos(void)
{
 u64 tos;

 rdmsrl(x86_pmu.lbr_tos, tos);

 return tos;
}
