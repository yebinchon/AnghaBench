
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int dummy; } ;


 scalar_t__ is_edp (struct intel_dp*) ;
 int is_pch_edp (struct intel_dp*) ;

__attribute__((used)) static bool is_cpu_edp(struct intel_dp *intel_dp)
{
 return is_edp(intel_dp) && !is_pch_edp(intel_dp);
}
