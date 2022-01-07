
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct mem_ctl_info {struct amd64_pvt* pvt_info; } ;
struct amd64_pvt {int F3; } ;
struct TYPE_5__ {int x86; } ;
struct TYPE_4__ {int scrubval; int bandwidth; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int SCRCTRL ;
 int amd64_read_pci_cfg (int ,int ,int*) ;
 TYPE_2__ boot_cpu_data ;
 int f15h_select_dct (struct amd64_pvt*,int ) ;
 TYPE_1__* scrubrates ;

__attribute__((used)) static int amd64_get_scrub_rate(struct mem_ctl_info *mci)
{
 struct amd64_pvt *pvt = mci->pvt_info;
 u32 scrubval = 0;
 int i, retval = -EINVAL;


 if (boot_cpu_data.x86 == 0x15)
  f15h_select_dct(pvt, 0);

 amd64_read_pci_cfg(pvt->F3, SCRCTRL, &scrubval);

 scrubval = scrubval & 0x001F;

 for (i = 0; i < ARRAY_SIZE(scrubrates); i++) {
  if (scrubrates[i].scrubval == scrubval) {
   retval = scrubrates[i].bandwidth;
   break;
  }
 }
 return retval;
}
