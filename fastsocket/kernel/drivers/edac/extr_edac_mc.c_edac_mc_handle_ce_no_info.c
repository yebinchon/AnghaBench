
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int ce_count; int ce_noinfo_count; } ;


 int KERN_WARNING ;
 scalar_t__ edac_mc_get_log_ce () ;
 int edac_mc_printk (struct mem_ctl_info*,int ,char*,char const*) ;

void edac_mc_handle_ce_no_info(struct mem_ctl_info *mci, const char *msg)
{
 if (edac_mc_get_log_ce())
  edac_mc_printk(mci, KERN_WARNING,
   "CE - no information available: %s\n", msg);

 mci->ce_noinfo_count++;
 mci->ce_count++;
}
