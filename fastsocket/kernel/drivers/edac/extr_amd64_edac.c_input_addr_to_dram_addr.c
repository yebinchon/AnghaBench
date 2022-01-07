
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
typedef int u32 ;
struct mem_ctl_info {struct amd64_pvt* pvt_info; } ;
struct amd64_pvt {unsigned int mc_node_id; } ;


 int BUG_ON (int) ;
 unsigned int GENMASK (int,int) ;
 int debugf1 (char*,unsigned long,...) ;
 int dram_intlv_en (struct amd64_pvt*,int ) ;
 int dram_intlv_sel (struct amd64_pvt*,unsigned int) ;
 unsigned int num_node_interleave_bits (int ) ;

__attribute__((used)) static u64 input_addr_to_dram_addr(struct mem_ctl_info *mci, u64 input_addr)
{
 struct amd64_pvt *pvt;
 unsigned node_id, intlv_shift;
 u64 bits, dram_addr;
 u32 intlv_sel;
 pvt = mci->pvt_info;
 node_id = pvt->mc_node_id;

 BUG_ON(node_id > 7);

 intlv_shift = num_node_interleave_bits(dram_intlv_en(pvt, 0));
 if (intlv_shift == 0) {
  debugf1("    InputAddr 0x%lx translates to DramAddr of "
   "same value\n", (unsigned long)input_addr);

  return input_addr;
 }

 bits = ((input_addr & GENMASK(12, 35)) << intlv_shift) +
  (input_addr & 0xfff);

 intlv_sel = dram_intlv_sel(pvt, node_id) & ((1 << intlv_shift) - 1);
 dram_addr = bits + (intlv_sel << 12);

 debugf1("InputAddr 0x%lx translates to DramAddr 0x%lx "
  "(%d node interleave bits)\n", (unsigned long)input_addr,
  (unsigned long)dram_addr, intlv_shift);

 return dram_addr;
}
