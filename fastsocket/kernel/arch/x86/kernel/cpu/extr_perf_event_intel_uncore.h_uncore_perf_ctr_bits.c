
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_uncore_box {TYPE_2__* pmu; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int perf_ctr_bits; } ;



__attribute__((used)) static inline int uncore_perf_ctr_bits(struct intel_uncore_box *box)
{
 return box->pmu->type->perf_ctr_bits;
}
