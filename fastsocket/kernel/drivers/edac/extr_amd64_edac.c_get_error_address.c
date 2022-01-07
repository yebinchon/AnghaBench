
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u64 ;
typedef int u32 ;
struct mce {int addr; int extcpu; } ;
struct cpuinfo_x86 {int x86; } ;
struct amd64_pvt {int F1; } ;
struct TYPE_2__ {struct amd64_pvt* pvt_info; } ;


 int DRAM_LOCAL_NODE_BASE ;
 int DRAM_LOCAL_NODE_LIM ;
 int GENMASK (int,int) ;
 int __fls (size_t) ;
 int amd64_read_pci_cfg (int ,int ,int*) ;
 size_t amd_get_nb_id (int ) ;
 struct cpuinfo_x86 boot_cpu_data ;
 TYPE_1__** mcis ;

__attribute__((used)) static u64 get_error_address(struct mce *m)
{
 struct cpuinfo_x86 *c = &boot_cpu_data;
 u64 addr;
 u8 start_bit = 1;
 u8 end_bit = 47;

 if (c->x86 == 0xf) {
  start_bit = 3;
  end_bit = 39;
 }

 addr = m->addr & GENMASK(start_bit, end_bit);




 if (c->x86 == 0x15) {
  struct amd64_pvt *pvt;
  u64 cc6_base, tmp_addr;
  u32 tmp;
  u8 mce_nid, intlv_en;

  if ((addr & GENMASK(24, 47)) >> 24 != 0x00fdf7)
   return addr;

  mce_nid = amd_get_nb_id(m->extcpu);
  pvt = mcis[mce_nid]->pvt_info;

  amd64_read_pci_cfg(pvt->F1, DRAM_LOCAL_NODE_LIM, &tmp);
  intlv_en = tmp >> 21 & 0x7;


  cc6_base = (tmp & GENMASK(0, 20)) << 3;


  cc6_base |= intlv_en ^ 0x7;


  cc6_base <<= 24;

  if (!intlv_en)
   return cc6_base | (addr & GENMASK(0, 23));

  amd64_read_pci_cfg(pvt->F1, DRAM_LOCAL_NODE_BASE, &tmp);


  tmp_addr = (addr & GENMASK(12, 23)) << __fls(intlv_en + 1);


  tmp_addr |= (tmp & GENMASK(21, 23)) >> 9;


  tmp_addr |= addr & GENMASK(0, 11);

  return cc6_base | tmp_addr;
 }

 return addr;
}
