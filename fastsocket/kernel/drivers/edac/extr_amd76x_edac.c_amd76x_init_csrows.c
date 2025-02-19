
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;
struct mem_ctl_info {int nr_csrows; struct csrow_info* csrows; } ;
struct csrow_info {int first_page; int nr_pages; int last_page; int page_mask; int grain; int edac_mode; int dtype; int mtype; } ;
typedef enum edac_type { ____Placeholder_edac_type } edac_type ;


 scalar_t__ AMD76X_DRAM_MODE_STATUS ;
 scalar_t__ AMD76X_MEM_BASE_ADDR ;
 int BIT (int ) ;
 int DEV_UNKNOWN ;
 int DEV_X4 ;
 int MEM_RDDR ;
 int PAGE_SHIFT ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;

__attribute__((used)) static void amd76x_init_csrows(struct mem_ctl_info *mci, struct pci_dev *pdev,
   enum edac_type edac_mode)
{
 struct csrow_info *csrow;
 u32 mba, mba_base, mba_mask, dms;
 int index;

 for (index = 0; index < mci->nr_csrows; index++) {
  csrow = &mci->csrows[index];


  pci_read_config_dword(pdev,
    AMD76X_MEM_BASE_ADDR + (index * 4), &mba);

  if (!(mba & BIT(0)))
   continue;

  mba_base = mba & 0xff800000UL;
  mba_mask = ((mba & 0xff80) << 16) | 0x7fffffUL;
  pci_read_config_dword(pdev, AMD76X_DRAM_MODE_STATUS, &dms);
  csrow->first_page = mba_base >> PAGE_SHIFT;
  csrow->nr_pages = (mba_mask + 1) >> PAGE_SHIFT;
  csrow->last_page = csrow->first_page + csrow->nr_pages - 1;
  csrow->page_mask = mba_mask >> PAGE_SHIFT;
  csrow->grain = csrow->nr_pages << PAGE_SHIFT;
  csrow->mtype = MEM_RDDR;
  csrow->dtype = ((dms >> index) & 0x1) ? DEV_X4 : DEV_UNKNOWN;
  csrow->edac_mode = edac_mode;
 }
}
