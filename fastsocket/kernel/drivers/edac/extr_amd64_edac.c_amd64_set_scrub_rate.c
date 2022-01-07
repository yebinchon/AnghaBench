
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mem_ctl_info {struct amd64_pvt* pvt_info; } ;
struct amd64_pvt {int F3; } ;
struct TYPE_2__ {int x86; } ;


 int __amd64_set_scrub_rate (int ,int,int) ;
 TYPE_1__ boot_cpu_data ;
 int f15h_select_dct (struct amd64_pvt*,int ) ;

__attribute__((used)) static int amd64_set_scrub_rate(struct mem_ctl_info *mci, u32 bw)
{
 struct amd64_pvt *pvt = mci->pvt_info;
 u32 min_scrubrate = 0x5;

 if (boot_cpu_data.x86 == 0xf)
  min_scrubrate = 0x0;


 if (boot_cpu_data.x86 == 0x15)
  f15h_select_dct(pvt, 0);

 return __amd64_set_scrub_rate(pvt->F3, bw, min_scrubrate);
}
