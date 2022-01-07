
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct mem_ctl_info {int dummy; } ;
struct mce {int status; } ;


 int EDAC_MOD_STR ;
 int MCI_STATUS_ADDRV ;
 int amd64_mc_err (struct mem_ctl_info*,char*,...) ;
 int edac_mc_handle_ue (struct mem_ctl_info*,int ,int ,int,int ) ;
 int edac_mc_handle_ue_no_info (struct mem_ctl_info*,int ) ;
 int error_address_to_page_and_offset (scalar_t__,int *,int *) ;
 struct mem_ctl_info* find_mc_by_sys_addr (struct mem_ctl_info*,scalar_t__) ;
 scalar_t__ get_error_address (struct mce*) ;
 int sys_addr_to_csrow (struct mem_ctl_info*,scalar_t__) ;

__attribute__((used)) static void amd64_handle_ue(struct mem_ctl_info *mci, struct mce *m)
{
 struct mem_ctl_info *log_mci, *src_mci = ((void*)0);
 int csrow;
 u64 sys_addr;
 u32 page, offset;

 log_mci = mci;

 if (!(m->status & MCI_STATUS_ADDRV)) {
  amd64_mc_err(mci, "HW has no ERROR_ADDRESS available\n");
  edac_mc_handle_ue_no_info(log_mci, EDAC_MOD_STR);
  return;
 }

 sys_addr = get_error_address(m);





 src_mci = find_mc_by_sys_addr(mci, sys_addr);
 if (!src_mci) {
  amd64_mc_err(mci, "ERROR ADDRESS (0x%lx) NOT mapped to a MC\n",
      (unsigned long)sys_addr);
  edac_mc_handle_ue_no_info(log_mci, EDAC_MOD_STR);
  return;
 }

 log_mci = src_mci;

 csrow = sys_addr_to_csrow(log_mci, sys_addr);
 if (csrow < 0) {
  amd64_mc_err(mci, "ERROR_ADDRESS (0x%lx) NOT mapped to CS\n",
      (unsigned long)sys_addr);
  edac_mc_handle_ue_no_info(log_mci, EDAC_MOD_STR);
 } else {
  error_address_to_page_and_offset(sys_addr, &page, &offset);
  edac_mc_handle_ue(log_mci, page, offset, csrow, EDAC_MOD_STR);
 }
}
