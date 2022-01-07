
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u64 ;
typedef int u32 ;
struct cpuinfo_x86 {int x86; int x86_model; } ;
struct amd64_pvt {unsigned int top_mem; unsigned int top_mem2; int nbcap; int dhar; int online_spare; int ecc_sym_sz; int dbam1; int F3; int dchr1; int dclr1; int dchr0; int dclr0; int dbam0; int F1; } ;


 int BIT (int) ;
 int DBAM0 ;
 int DBAM1 ;
 int DCHR0 ;
 int DCHR1 ;
 int DCLR0 ;
 int DCLR1 ;
 int DHAR ;
 unsigned int DRAM_RANGES ;
 int EXT_NB_MCA_CFG ;
 int F10_ONLINE_SPARE ;
 int MSR_K8_SYSCFG ;
 int MSR_K8_TOP_MEM1 ;
 int MSR_K8_TOP_MEM2 ;
 int NBCAP ;
 int amd64_read_dct_pci_cfg (struct amd64_pvt*,int ,int *) ;
 int amd64_read_pci_cfg (int ,int ,int*) ;
 struct cpuinfo_x86 boot_cpu_data ;
 int dct_ganging_enabled (struct amd64_pvt*) ;
 int debugf0 (char*,...) ;
 int debugf1 (char*,...) ;
 int dram_dst_node (struct amd64_pvt*,unsigned int) ;
 scalar_t__ dram_intlv_en (struct amd64_pvt*,unsigned int) ;
 int dram_intlv_sel (struct amd64_pvt*,unsigned int) ;
 int dram_rw (struct amd64_pvt*,unsigned int) ;
 int dump_misc_regs (struct amd64_pvt*) ;
 int get_dram_base (struct amd64_pvt*,unsigned int) ;
 int get_dram_limit (struct amd64_pvt*,unsigned int) ;
 int rdmsrl (int ,unsigned int) ;
 int read_dct_base_mask (struct amd64_pvt*) ;
 int read_dram_base_limit_regs (struct amd64_pvt*,unsigned int) ;
 int read_dram_ctl_register (struct amd64_pvt*) ;

__attribute__((used)) static void read_mc_regs(struct amd64_pvt *pvt)
{
 struct cpuinfo_x86 *c = &boot_cpu_data;
 u64 msr_val;
 u32 tmp;
 unsigned range;





 rdmsrl(MSR_K8_TOP_MEM1, pvt->top_mem);
 debugf0("  TOP_MEM:  0x%016llx\n", pvt->top_mem);


 rdmsrl(MSR_K8_SYSCFG, msr_val);
 if (msr_val & (1U << 21)) {
  rdmsrl(MSR_K8_TOP_MEM2, pvt->top_mem2);
  debugf0("  TOP_MEM2: 0x%016llx\n", pvt->top_mem2);
 } else
  debugf0("  TOP_MEM2 disabled.\n");

 amd64_read_pci_cfg(pvt->F3, NBCAP, &pvt->nbcap);

 read_dram_ctl_register(pvt);

 for (range = 0; range < DRAM_RANGES; range++) {
  u8 rw;


  read_dram_base_limit_regs(pvt, range);

  rw = dram_rw(pvt, range);
  if (!rw)
   continue;

  debugf1("  DRAM range[%d], base: 0x%016llx; limit: 0x%016llx\n",
   range,
   get_dram_base(pvt, range),
   get_dram_limit(pvt, range));

  debugf1("   IntlvEn=%s; Range access: %s%s IntlvSel=%d DstNode=%d\n",
   dram_intlv_en(pvt, range) ? "Enabled" : "Disabled",
   (rw & 0x1) ? "R" : "-",
   (rw & 0x2) ? "W" : "-",
   dram_intlv_sel(pvt, range),
   dram_dst_node(pvt, range));
 }

 read_dct_base_mask(pvt);

 amd64_read_pci_cfg(pvt->F1, DHAR, &pvt->dhar);
 amd64_read_dct_pci_cfg(pvt, DBAM0, &pvt->dbam0);

 amd64_read_pci_cfg(pvt->F3, F10_ONLINE_SPARE, &pvt->online_spare);

 amd64_read_dct_pci_cfg(pvt, DCLR0, &pvt->dclr0);
 amd64_read_dct_pci_cfg(pvt, DCHR0, &pvt->dchr0);

 if (!dct_ganging_enabled(pvt)) {
  amd64_read_dct_pci_cfg(pvt, DCLR1, &pvt->dclr1);
  amd64_read_dct_pci_cfg(pvt, DCHR1, &pvt->dchr1);
 }

 pvt->ecc_sym_sz = 4;

 if (c->x86 >= 0x10) {
  amd64_read_pci_cfg(pvt->F3, EXT_NB_MCA_CFG, &tmp);
  if (c->x86 != 0x16)

   amd64_read_dct_pci_cfg(pvt, DBAM1, &pvt->dbam1);


  if ((c->x86 > 0x10 || c->x86_model > 7) && tmp & BIT(25))
   pvt->ecc_sym_sz = 8;
 }
 dump_misc_regs(pvt);
}
