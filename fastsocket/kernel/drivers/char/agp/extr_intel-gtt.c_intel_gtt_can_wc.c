
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INTEL_GTT_GEN ;
 scalar_t__ needs_ilk_vtd_wa () ;

__attribute__((used)) static bool intel_gtt_can_wc(void)
{
 if (INTEL_GTT_GEN <= 2)
  return 0;

 if (INTEL_GTT_GEN >= 6)
  return 0;


 if (needs_ilk_vtd_wa())
  return 0;

 return 1;
}
