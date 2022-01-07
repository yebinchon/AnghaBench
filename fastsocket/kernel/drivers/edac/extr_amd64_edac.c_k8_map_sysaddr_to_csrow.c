
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct mem_ctl_info {struct amd64_pvt* pvt_info; } ;
struct amd64_pvt {int nbcfg; } ;


 int BIT (int) ;
 int EDAC_MOD_STR ;
 int NBCFG_CHIPKILL ;
 int amd64_mc_err (struct mem_ctl_info*,char*,unsigned long) ;
 int amd64_mc_warn (struct mem_ctl_info*,char*,int ) ;
 int edac_mc_handle_ce (struct mem_ctl_info*,int ,int ,int ,int,int,int ) ;
 int edac_mc_handle_ce_no_info (struct mem_ctl_info*,int ) ;
 int error_address_to_page_and_offset (int,int *,int *) ;
 struct mem_ctl_info* find_mc_by_sys_addr (struct mem_ctl_info*,int) ;
 int get_channel_from_ecc_syndrome (struct mem_ctl_info*,int ) ;
 int sys_addr_to_csrow (struct mem_ctl_info*,int) ;

__attribute__((used)) static void k8_map_sysaddr_to_csrow(struct mem_ctl_info *mci, u64 sys_addr,
        u16 syndrome)
{
 struct mem_ctl_info *src_mci;
 struct amd64_pvt *pvt = mci->pvt_info;
 int channel, csrow;
 u32 page, offset;


 if (pvt->nbcfg & NBCFG_CHIPKILL) {
  channel = get_channel_from_ecc_syndrome(mci, syndrome);
  if (channel < 0) {





   amd64_mc_warn(mci, "unknown syndrome 0x%04x - possible "
        "error reporting race\n", syndrome);
   edac_mc_handle_ce_no_info(mci, EDAC_MOD_STR);
   return;
  }
 } else {
  channel = ((sys_addr & BIT(3)) != 0);
 }





 src_mci = find_mc_by_sys_addr(mci, sys_addr);
 if (!src_mci) {
  amd64_mc_err(mci, "failed to map error addr 0x%lx to a node\n",
        (unsigned long)sys_addr);
  edac_mc_handle_ce_no_info(mci, EDAC_MOD_STR);
  return;
 }


 csrow = sys_addr_to_csrow(src_mci, sys_addr);
 if (csrow < 0) {
  edac_mc_handle_ce_no_info(src_mci, EDAC_MOD_STR);
 } else {
  error_address_to_page_and_offset(sys_addr, &page, &offset);

  edac_mc_handle_ce(src_mci, page, offset, syndrome, csrow,
      channel, EDAC_MOD_STR);
 }
}
