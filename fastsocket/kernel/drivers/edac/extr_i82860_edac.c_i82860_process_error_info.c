
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int dummy; } ;
struct i82860_error_info {int errsts2; int errsts; int eap; int derrsyn; } ;


 int PAGE_SHIFT ;
 int edac_mc_find_csrow_by_page (struct mem_ctl_info*,int) ;
 int edac_mc_handle_ce (struct mem_ctl_info*,int,int ,int ,int,int ,char*) ;
 int edac_mc_handle_ce_no_info (struct mem_ctl_info*,char*) ;
 int edac_mc_handle_ue (struct mem_ctl_info*,int,int ,int,char*) ;

__attribute__((used)) static int i82860_process_error_info(struct mem_ctl_info *mci,
    struct i82860_error_info *info,
    int handle_errors)
{
 int row;

 if (!(info->errsts2 & 0x0003))
  return 0;

 if (!handle_errors)
  return 1;

 if ((info->errsts ^ info->errsts2) & 0x0003) {
  edac_mc_handle_ce_no_info(mci, "UE overwrote CE");
  info->errsts = info->errsts2;
 }

 info->eap >>= PAGE_SHIFT;
 row = edac_mc_find_csrow_by_page(mci, info->eap);

 if (info->errsts & 0x0002)
  edac_mc_handle_ue(mci, info->eap, 0, row, "i82860 UE");
 else
  edac_mc_handle_ce(mci, info->eap, 0, info->derrsyn, row, 0,
    "i82860 UE");

 return 1;
}
