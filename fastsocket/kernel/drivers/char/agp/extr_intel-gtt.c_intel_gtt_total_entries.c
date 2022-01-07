
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int gtt_mappable_entries; } ;


 int INTEL_GTT_GEN ;
 scalar_t__ IS_G33 ;
 unsigned int i965_gtt_total_entries () ;
 TYPE_1__ intel_private ;

__attribute__((used)) static unsigned int intel_gtt_total_entries(void)
{
 if (IS_G33 || INTEL_GTT_GEN == 4 || INTEL_GTT_GEN == 5)
  return i965_gtt_total_entries();
 else {



  return intel_private.gtt_mappable_entries;
 }
}
