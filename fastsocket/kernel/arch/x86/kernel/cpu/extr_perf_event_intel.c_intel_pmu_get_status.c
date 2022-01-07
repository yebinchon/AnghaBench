
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MSR_CORE_PERF_GLOBAL_STATUS ;
 int rdmsrl (int ,int ) ;

__attribute__((used)) static inline u64 intel_pmu_get_status(void)
{
 u64 status;

 rdmsrl(MSR_CORE_PERF_GLOBAL_STATUS, status);

 return status;
}
