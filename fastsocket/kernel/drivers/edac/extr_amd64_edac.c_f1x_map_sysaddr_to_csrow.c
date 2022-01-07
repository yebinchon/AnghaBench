
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct mem_ctl_info {TYPE_1__* csrows; struct amd64_pvt* pvt_info; } ;
struct amd64_pvt {int dummy; } ;
struct TYPE_2__ {int nr_channels; } ;


 int EDAC_MOD_STR ;
 scalar_t__ dct_ganging_enabled (struct amd64_pvt*) ;
 int edac_mc_handle_ce (struct mem_ctl_info*,int ,int ,int ,int,int,int ) ;
 int edac_mc_handle_ce_no_info (struct mem_ctl_info*,int ) ;
 int error_address_to_page_and_offset (int ,int *,int *) ;
 int f1x_translate_sysaddr_to_cs (struct amd64_pvt*,int ,int*,int*) ;
 int get_channel_from_ecc_syndrome (struct mem_ctl_info*,int ) ;

__attribute__((used)) static void f1x_map_sysaddr_to_csrow(struct mem_ctl_info *mci, u64 sys_addr,
         u16 syndrome)
{
 struct amd64_pvt *pvt = mci->pvt_info;
 u32 page, offset;
 int nid, csrow, chan = 0;

 csrow = f1x_translate_sysaddr_to_cs(pvt, sys_addr, &nid, &chan);

 if (csrow < 0) {
  edac_mc_handle_ce_no_info(mci, EDAC_MOD_STR);
  return;
 }

 error_address_to_page_and_offset(sys_addr, &page, &offset);






 if (dct_ganging_enabled(pvt))
  chan = get_channel_from_ecc_syndrome(mci, syndrome);

 if (chan >= 0)
  edac_mc_handle_ce(mci, page, offset, syndrome, csrow, chan,
      EDAC_MOD_STR);
 else



  for (chan = 0; chan < mci->csrows[csrow].nr_channels; chan++)
   edac_mc_handle_ce(mci, page, offset, syndrome,
       csrow, chan, EDAC_MOD_STR);
}
