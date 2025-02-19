
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct mem_ctl_info {struct csrow_info* csrows; struct i7core_pvt* pvt_info; } ;
struct TYPE_7__ {int mc_control; int mc_status; int max_dod; int ch_map; } ;
struct i7core_pvt {int** csrow_map; TYPE_2__* i7core_dev; TYPE_4__* channel; TYPE_3__ info; struct pci_dev*** pci_ch; struct pci_dev** pci_mcr; } ;
struct csrow_info {unsigned long first_page; unsigned long last_page; int nr_pages; int grain; int csrow_idx; int nr_channels; int edac_mode; int mtype; TYPE_1__* channels; int dtype; scalar_t__ page_mask; } ;
typedef enum mem_type { ____Placeholder_mem_type } mem_type ;
typedef enum edac_type { ____Placeholder_edac_type } edac_type ;
struct TYPE_8__ {int ranks; int dimms; } ;
struct TYPE_6__ {int socket; } ;
struct TYPE_5__ {int chan_idx; int label; scalar_t__ ce_count; } ;


 int CH_ACTIVE (struct i7core_pvt*,int) ;
 scalar_t__ CH_DISABLED (struct i7core_pvt*,int) ;
 int DEV_UNKNOWN ;
 int DEV_X16 ;
 int DEV_X4 ;
 int DEV_X8 ;
 int DIMM_PRESENT (int) ;
 scalar_t__ ECC_ENABLED (struct i7core_pvt*) ;
 scalar_t__ ECCx8 (struct i7core_pvt*) ;
 int EDAC_NONE ;
 int EDAC_S4ECD4ED ;
 int EDAC_S8ECD8ED ;
 int ENODEV ;
 int MC_CHANNEL_DIMM_INIT_PARAMS ;
 int MC_CHANNEL_MAPPER ;
 int MC_CONTROL ;
 int MC_DOD_CH_DIMM0 ;
 int MC_DOD_CH_DIMM1 ;
 int MC_DOD_CH_DIMM2 ;
 int MC_DOD_NUMBANK (int) ;
 int MC_DOD_NUMCOL (int) ;
 int MC_DOD_NUMRANK (int) ;
 int MC_DOD_NUMROW (int) ;
 int MC_MAX_DOD ;
 int MC_SAG_CH_0 ;
 int MC_SAG_CH_1 ;
 int MC_SAG_CH_2 ;
 int MC_SAG_CH_3 ;
 int MC_SAG_CH_4 ;
 int MC_SAG_CH_5 ;
 int MC_SAG_CH_6 ;
 int MC_SAG_CH_7 ;
 int MC_STATUS ;
 int MEM_DDR3 ;
 int MEM_RDDR3 ;
 int MiB_TO_PAGES (int) ;
 int NUM_CHANS ;
 int QUAD_RANK_PRESENT ;
 int RANKOFFSET (int) ;
 int RDLCH (int,int) ;
 int REGISTERED_DIMM ;
 int SINGLE_QUAD_RANK_PRESENT ;
 int THREE_DIMMS_PRESENT ;
 int WRLCH (int,int) ;
 int debugf0 (char*,...) ;
 int debugf1 (char*,int,...) ;
 int numbank (int) ;
 int numcol (int) ;
 int numdimms (int) ;
 int numrank (int) ;
 int numrow (int) ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int snprintf (int ,int,char*,int,int,int) ;

__attribute__((used)) static int get_dimm_config(const struct mem_ctl_info *mci)
{
 struct i7core_pvt *pvt = mci->pvt_info;
 struct csrow_info *csr;
 struct pci_dev *pdev;
 int i, j;
 int csrow = 0;
 unsigned long last_page = 0;
 enum edac_type mode;
 enum mem_type mtype;


 pdev = pvt->pci_mcr[0];
 if (!pdev)
  return -ENODEV;


 pci_read_config_dword(pdev, MC_CONTROL, &pvt->info.mc_control);
 pci_read_config_dword(pdev, MC_STATUS, &pvt->info.mc_status);
 pci_read_config_dword(pdev, MC_MAX_DOD, &pvt->info.max_dod);
 pci_read_config_dword(pdev, MC_CHANNEL_MAPPER, &pvt->info.ch_map);

 debugf0("QPI %d control=0x%08x status=0x%08x dod=0x%08x map=0x%08x\n",
  pvt->i7core_dev->socket, pvt->info.mc_control, pvt->info.mc_status,
  pvt->info.max_dod, pvt->info.ch_map);

 if (ECC_ENABLED(pvt)) {
  debugf0("ECC enabled with x%d SDCC\n", ECCx8(pvt) ? 8 : 4);
  if (ECCx8(pvt))
   mode = EDAC_S8ECD8ED;
  else
   mode = EDAC_S4ECD4ED;
 } else {
  debugf0("ECC disabled\n");
  mode = EDAC_NONE;
 }


 debugf0("DOD Max limits: DIMMS: %d, %d-ranked, %d-banked "
  "x%x x 0x%x\n",
  numdimms(pvt->info.max_dod),
  numrank(pvt->info.max_dod >> 2),
  numbank(pvt->info.max_dod >> 4),
  numrow(pvt->info.max_dod >> 6),
  numcol(pvt->info.max_dod >> 9));

 for (i = 0; i < NUM_CHANS; i++) {
  u32 data, dimm_dod[3], value[8];

  if (!pvt->pci_ch[i][0])
   continue;

  if (!CH_ACTIVE(pvt, i)) {
   debugf0("Channel %i is not active\n", i);
   continue;
  }
  if (CH_DISABLED(pvt, i)) {
   debugf0("Channel %i is disabled\n", i);
   continue;
  }


  pci_read_config_dword(pvt->pci_ch[i][0],
    MC_CHANNEL_DIMM_INIT_PARAMS, &data);

  pvt->channel[i].ranks = (data & QUAD_RANK_PRESENT) ?
      4 : 2;

  if (data & REGISTERED_DIMM)
   mtype = MEM_RDDR3;
  else
   mtype = MEM_DDR3;
  pci_read_config_dword(pvt->pci_ch[i][1],
    MC_DOD_CH_DIMM0, &dimm_dod[0]);
  pci_read_config_dword(pvt->pci_ch[i][1],
    MC_DOD_CH_DIMM1, &dimm_dod[1]);
  pci_read_config_dword(pvt->pci_ch[i][1],
    MC_DOD_CH_DIMM2, &dimm_dod[2]);

  debugf0("Ch%d phy rd%d, wr%d (0x%08x): "
   "%d ranks, %cDIMMs\n",
   i,
   RDLCH(pvt->info.ch_map, i), WRLCH(pvt->info.ch_map, i),
   data,
   pvt->channel[i].ranks,
   (data & REGISTERED_DIMM) ? 'R' : 'U');

  for (j = 0; j < 3; j++) {
   u32 banks, ranks, rows, cols;
   u32 size, npages;

   if (!DIMM_PRESENT(dimm_dod[j]))
    continue;

   banks = numbank(MC_DOD_NUMBANK(dimm_dod[j]));
   ranks = numrank(MC_DOD_NUMRANK(dimm_dod[j]));
   rows = numrow(MC_DOD_NUMROW(dimm_dod[j]));
   cols = numcol(MC_DOD_NUMCOL(dimm_dod[j]));


   size = (rows * cols * banks * ranks) >> (20 - 3);

   pvt->channel[i].dimms++;

   debugf0("\tdimm %d %d Mb offset: %x, "
    "bank: %d, rank: %d, row: %#x, col: %#x\n",
    j, size,
    RANKOFFSET(dimm_dod[j]),
    banks, ranks, rows, cols);

   npages = MiB_TO_PAGES(size);

   csr = &mci->csrows[csrow];
   csr->first_page = last_page + 1;
   last_page += npages;
   csr->last_page = last_page;
   csr->nr_pages = npages;

   csr->page_mask = 0;
   csr->grain = 8;
   csr->csrow_idx = csrow;
   csr->nr_channels = 1;

   csr->channels[0].chan_idx = i;
   csr->channels[0].ce_count = 0;

   pvt->csrow_map[i][j] = csrow;

   switch (banks) {
   case 4:
    csr->dtype = DEV_X4;
    break;
   case 8:
    csr->dtype = DEV_X8;
    break;
   case 16:
    csr->dtype = DEV_X16;
    break;
   default:
    csr->dtype = DEV_UNKNOWN;
   }

   csr->edac_mode = mode;
   csr->mtype = mtype;
   snprintf(csr->channels[0].label,
     sizeof(csr->channels[0].label),
     "CPU#%uChannel#%u_DIMM#%u",
     pvt->i7core_dev->socket, i, j);

   csrow++;
  }

  pci_read_config_dword(pdev, MC_SAG_CH_0, &value[0]);
  pci_read_config_dword(pdev, MC_SAG_CH_1, &value[1]);
  pci_read_config_dword(pdev, MC_SAG_CH_2, &value[2]);
  pci_read_config_dword(pdev, MC_SAG_CH_3, &value[3]);
  pci_read_config_dword(pdev, MC_SAG_CH_4, &value[4]);
  pci_read_config_dword(pdev, MC_SAG_CH_5, &value[5]);
  pci_read_config_dword(pdev, MC_SAG_CH_6, &value[6]);
  pci_read_config_dword(pdev, MC_SAG_CH_7, &value[7]);
  debugf1("\t[%i] DIVBY3\tREMOVED\tOFFSET\n", i);
  for (j = 0; j < 8; j++)
   debugf1("\t\t%#x\t%#x\t%#x\n",
    (value[j] >> 27) & 0x1,
    (value[j] >> 24) & 0x7,
    (value[j] && ((1 << 24) - 1)));
 }

 return 0;
}
