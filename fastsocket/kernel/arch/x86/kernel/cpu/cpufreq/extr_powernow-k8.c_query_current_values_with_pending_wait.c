
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct powernow_k8_data {int currpstate; int numps; int currvid; int currfid; } ;
struct TYPE_2__ {int x86; } ;


 scalar_t__ CPU_HW_PSTATE ;
 int HW_PSTATE_0 ;
 int HW_PSTATE_MASK ;
 int MSR_FIDVID_STATUS ;
 int MSR_PSTATE_STATUS ;
 int MSR_S_HI_CURRENT_VID ;
 int MSR_S_LO_CHANGE_PENDING ;
 int MSR_S_LO_CURRENT_FID ;
 TYPE_1__ boot_cpu_data ;
 scalar_t__ cpu_family ;
 int dprintk (char*) ;
 int rdmsr (int ,int,int) ;

__attribute__((used)) static int query_current_values_with_pending_wait(struct powernow_k8_data *data)
{
 u32 lo, hi;
 u32 i = 0;

 if (cpu_family == CPU_HW_PSTATE) {
  rdmsr(MSR_PSTATE_STATUS, lo, hi);
  i = lo & HW_PSTATE_MASK;
  data->currpstate = i;





  if ((boot_cpu_data.x86 == 0x11) && (i >= data->numps))
   data->currpstate = HW_PSTATE_0;

  return 0;
 }
 do {
  if (i++ > 10000) {
   dprintk("detected change pending stuck\n");
   return 1;
  }
  rdmsr(MSR_FIDVID_STATUS, lo, hi);
 } while (lo & MSR_S_LO_CHANGE_PENDING);

 data->currvid = hi & MSR_S_HI_CURRENT_VID;
 data->currfid = lo & MSR_S_LO_CURRENT_FID;

 return 0;
}
