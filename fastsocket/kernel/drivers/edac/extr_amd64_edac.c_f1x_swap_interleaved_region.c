
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct amd64_pvt {int dummy; } ;
struct TYPE_2__ {int x86; int x86_model; int x86_mask; } ;


 int SWAP_INTLV_REG ;
 int amd64_read_dct_pci_cfg (struct amd64_pvt*,int ,int*) ;
 TYPE_1__ boot_cpu_data ;

__attribute__((used)) static u64 f1x_swap_interleaved_region(struct amd64_pvt *pvt, u64 sys_addr)
{
 u32 swap_reg, swap_base, swap_limit, rgn_size, tmp_addr;

 if (boot_cpu_data.x86 == 0x10) {

  if (boot_cpu_data.x86_model < 4 ||
      (boot_cpu_data.x86_model < 0xa &&
       boot_cpu_data.x86_mask < 3))
   return sys_addr;
 }

 amd64_read_dct_pci_cfg(pvt, SWAP_INTLV_REG, &swap_reg);

 if (!(swap_reg & 0x1))
  return sys_addr;

 swap_base = (swap_reg >> 3) & 0x7f;
 swap_limit = (swap_reg >> 11) & 0x7f;
 rgn_size = (swap_reg >> 20) & 0x7f;
 tmp_addr = sys_addr >> 27;

 if (!(sys_addr >> 34) &&
     (((tmp_addr >= swap_base) &&
      (tmp_addr <= swap_limit)) ||
      (tmp_addr < rgn_size)))
  return sys_addr ^ (u64)swap_base << 27;

 return sys_addr;
}
