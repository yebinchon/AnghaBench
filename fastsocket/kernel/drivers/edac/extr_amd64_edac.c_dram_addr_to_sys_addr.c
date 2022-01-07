
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct mem_ctl_info {struct amd64_pvt* pvt_info; } ;
struct amd64_pvt {int mc_node_id; } ;


 int amd64_get_dram_hole_info (struct mem_ctl_info*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int debugf1 (char*,unsigned long,unsigned long,...) ;
 scalar_t__ get_dram_base (struct amd64_pvt*,int ) ;

__attribute__((used)) static u64 dram_addr_to_sys_addr(struct mem_ctl_info *mci, u64 dram_addr)
{
 struct amd64_pvt *pvt = mci->pvt_info;
 u64 hole_base, hole_offset, hole_size, base, sys_addr;
 int ret = 0;

 ret = amd64_get_dram_hole_info(mci, &hole_base, &hole_offset,
          &hole_size);
 if (!ret) {
  if ((dram_addr >= hole_base) &&
      (dram_addr < (hole_base + hole_size))) {
   sys_addr = dram_addr + hole_offset;

   debugf1("using DHAR to translate DramAddr 0x%lx to "
    "SysAddr 0x%lx\n", (unsigned long)dram_addr,
    (unsigned long)sys_addr);

   return sys_addr;
  }
 }

 base = get_dram_base(pvt, pvt->mc_node_id);
 sys_addr = dram_addr + base;
 sys_addr |= ~((sys_addr & (1ull << 39)) - 1);

 debugf1("    Node %d, DramAddr 0x%lx to SysAddr 0x%lx\n",
  pvt->mc_node_id, (unsigned long)dram_addr,
  (unsigned long)sys_addr);

 return sys_addr;
}
