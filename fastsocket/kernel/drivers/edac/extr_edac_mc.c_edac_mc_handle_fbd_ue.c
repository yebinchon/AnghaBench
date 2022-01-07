
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mem_ctl_info {unsigned int nr_csrows; TYPE_2__* csrows; int ue_count; } ;
struct TYPE_4__ {unsigned int nr_channels; TYPE_1__* channels; int ue_count; } ;
struct TYPE_3__ {char* label; } ;


 int EDAC_MC_LABEL_LEN ;
 int KERN_EMERG ;
 int KERN_ERR ;
 scalar_t__ edac_mc_get_log_ue () ;
 scalar_t__ edac_mc_get_panic_on_ue () ;
 int edac_mc_handle_ue_no_info (struct mem_ctl_info*,char*) ;
 int edac_mc_printk (struct mem_ctl_info*,int ,char*,unsigned int,unsigned int,...) ;
 int panic (char*,unsigned int,unsigned int,unsigned int,char*,char*) ;
 int snprintf (char*,int,char*,char*) ;

void edac_mc_handle_fbd_ue(struct mem_ctl_info *mci,
   unsigned int csrow,
   unsigned int channela,
   unsigned int channelb, char *msg)
{
 int len = EDAC_MC_LABEL_LEN * 4;
 char labels[len + 1];
 char *pos = labels;
 int chars;

 if (csrow >= mci->nr_csrows) {

  edac_mc_printk(mci, KERN_ERR,
   "INTERNAL ERROR: row out of range (%d >= %d)\n",
   csrow, mci->nr_csrows);
  edac_mc_handle_ue_no_info(mci, "INTERNAL ERROR");
  return;
 }

 if (channela >= mci->csrows[csrow].nr_channels) {

  edac_mc_printk(mci, KERN_ERR,
   "INTERNAL ERROR: channel-a out of range "
   "(%d >= %d)\n",
   channela, mci->csrows[csrow].nr_channels);
  edac_mc_handle_ue_no_info(mci, "INTERNAL ERROR");
  return;
 }

 if (channelb >= mci->csrows[csrow].nr_channels) {

  edac_mc_printk(mci, KERN_ERR,
   "INTERNAL ERROR: channel-b out of range "
   "(%d >= %d)\n",
   channelb, mci->csrows[csrow].nr_channels);
  edac_mc_handle_ue_no_info(mci, "INTERNAL ERROR");
  return;
 }

 mci->ue_count++;
 mci->csrows[csrow].ue_count++;


 chars = snprintf(pos, len + 1, "%s",
    mci->csrows[csrow].channels[channela].label);
 len -= chars;
 pos += chars;
 chars = snprintf(pos, len + 1, "-%s",
    mci->csrows[csrow].channels[channelb].label);

 if (edac_mc_get_log_ue())
  edac_mc_printk(mci, KERN_EMERG,
   "UE row %d, channel-a= %d channel-b= %d "
   "labels \"%s\": %s\n", csrow, channela, channelb,
   labels, msg);

 if (edac_mc_get_panic_on_ue())
  panic("UE row %d, channel-a= %d channel-b= %d "
   "labels \"%s\": %s\n", csrow, channela,
   channelb, labels, msg);
}
