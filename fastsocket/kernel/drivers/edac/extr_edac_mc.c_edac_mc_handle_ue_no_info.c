
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int ue_count; int ue_noinfo_count; int mc_idx; } ;


 int KERN_WARNING ;
 scalar_t__ edac_mc_get_log_ue () ;
 scalar_t__ edac_mc_get_panic_on_ue () ;
 int edac_mc_printk (struct mem_ctl_info*,int ,char*,char const*) ;
 int panic (char*,int ) ;

void edac_mc_handle_ue_no_info(struct mem_ctl_info *mci, const char *msg)
{
 if (edac_mc_get_panic_on_ue())
  panic("EDAC MC%d: Uncorrected Error", mci->mc_idx);

 if (edac_mc_get_log_ue())
  edac_mc_printk(mci, KERN_WARNING,
   "UE - no information available: %s\n", msg);
 mci->ue_noinfo_count++;
 mci->ue_count++;
}
