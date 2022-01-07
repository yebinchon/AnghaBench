
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int is_pch_edp; } ;



__attribute__((used)) static bool is_pch_edp(struct intel_dp *intel_dp)
{
 return intel_dp->is_pch_edp;
}
