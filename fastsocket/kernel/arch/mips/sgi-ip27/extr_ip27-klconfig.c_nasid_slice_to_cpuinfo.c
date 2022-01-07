
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int nasid_t ;
typedef int lboard_t ;
typedef int klinfo_t ;
struct TYPE_4__ {int physid; } ;
struct TYPE_5__ {TYPE_1__ cpu_info; } ;
typedef TYPE_2__ klcpu_t ;


 int KLSTRUCT_CPU ;
 int KLTYPE_IP27 ;
 scalar_t__ KL_CONFIG_INFO (int ) ;
 scalar_t__ find_component (int *,int *,int ) ;
 scalar_t__ find_first_component (int *,int ) ;
 int * find_lboard (int *,int ) ;

klcpu_t * nasid_slice_to_cpuinfo(nasid_t nasid, int slice)
{
 lboard_t *brd;
 klcpu_t *acpu;

 if (!(brd = find_lboard((lboard_t *)KL_CONFIG_INFO(nasid), KLTYPE_IP27)))
  return (klcpu_t *)((void*)0);

 if (!(acpu = (klcpu_t *)find_first_component(brd, KLSTRUCT_CPU)))
  return (klcpu_t *)((void*)0);

 do {
  if ((acpu->cpu_info.physid) == slice)
   return acpu;
 } while ((acpu = (klcpu_t *)find_component(brd, (klinfo_t *)acpu,
        KLSTRUCT_CPU)));
 return (klcpu_t *)((void*)0);
}
