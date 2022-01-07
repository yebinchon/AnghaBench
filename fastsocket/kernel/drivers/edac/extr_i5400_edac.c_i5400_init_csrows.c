
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mem_ctl_info {struct csrow_info* csrows; struct i5400_pvt* pvt_info; } ;
struct i5400_pvt {int maxch; int maxdimmperch; TYPE_1__** dimm_info; } ;
struct csrow_info {int csrow_idx; int last_page; int page_mask; int grain; int nr_pages; int edac_mode; int dtype; int mtype; scalar_t__ first_page; } ;
struct TYPE_2__ {scalar_t__ megabytes; } ;


 int DEV_X4 ;
 int DEV_X8 ;
 int EDAC_S8ECD8ED ;
 int MEM_FB_DDR2 ;
 int MTR_DIMMS_PRESENT (int) ;
 scalar_t__ MTR_DRAM_WIDTH (int) ;
 int determine_mtr (struct i5400_pvt*,int,int ) ;

__attribute__((used)) static int i5400_init_csrows(struct mem_ctl_info *mci)
{
 struct i5400_pvt *pvt;
 struct csrow_info *p_csrow;
 int empty, channel_count;
 int max_csrows;
 int mtr;
 int csrow_megs;
 int channel;
 int csrow;

 pvt = mci->pvt_info;

 channel_count = pvt->maxch;
 max_csrows = pvt->maxdimmperch;

 empty = 1;

 for (csrow = 0; csrow < max_csrows; csrow++) {
  p_csrow = &mci->csrows[csrow];

  p_csrow->csrow_idx = csrow;


  mtr = determine_mtr(pvt, csrow, 0);


  if (!MTR_DIMMS_PRESENT(mtr))
   continue;


  p_csrow->first_page = 0 + csrow * 20;
  p_csrow->last_page = 9 + csrow * 20;
  p_csrow->page_mask = 0xFFF;

  p_csrow->grain = 8;

  csrow_megs = 0;
  for (channel = 0; channel < pvt->maxch; channel++)
   csrow_megs += pvt->dimm_info[csrow][channel].megabytes;

  p_csrow->nr_pages = csrow_megs << 8;


  p_csrow->mtype = MEM_FB_DDR2;


  if (MTR_DRAM_WIDTH(mtr))
   p_csrow->dtype = DEV_X8;
  else
   p_csrow->dtype = DEV_X4;

  p_csrow->edac_mode = EDAC_S8ECD8ED;

  empty = 0;
 }

 return empty;
}
