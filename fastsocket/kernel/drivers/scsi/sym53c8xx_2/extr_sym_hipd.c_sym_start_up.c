
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {scalar_t__ uval; int wval; scalar_t__ sval; } ;
struct sym_tcb {TYPE_3__** lunmp; TYPE_2__* lun0p; TYPE_1__ head; scalar_t__ to_reset; } ;
struct TYPE_8__ {scalar_t__ ramaddr; } ;
struct sym_hcb {int rv_scntl0; int myaddr; int rv_dmode; int rv_ctest5; int rv_dcntl; int rv_ctest3; int rv_ctest4; int features; int rv_stest2; int rv_ccntl0; int rv_ccntl1; int scsi_mode; scalar_t__ hcb_ba; scalar_t__ istat_sem; int scr_ram_seg; int scriptb_sz; int scriptb0; TYPE_4__ s; int scripta_sz; int scripta0; scalar_t__ ram_ba; int rv_scntl3; struct sym_tcb* target; scalar_t__* dmap_bah; int (* fw_patch ) (struct Scsi_Host*) ;scalar_t__ dqueueget; void** dqueue; scalar_t__ dqueue_ba; scalar_t__ squeueput; void** squeue; scalar_t__ idletask_ba; scalar_t__ squeue_ba; } ;
struct sym_data {struct sym_hcb* ncb; struct pci_dev* pdev; } ;
struct pci_dev {scalar_t__ device; int revision; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_7__ {scalar_t__ to_clear; } ;
struct TYPE_6__ {scalar_t__ to_clear; } ;


 int BF ;
 int CLF ;
 int CSF ;
 int DID_RESET ;
 int DISAIP ;
 int DPR ;
 int EXT ;
 int FE_C10 ;
 int FE_DAC ;
 int FE_LED0 ;
 int FE_LEDC ;
 int FE_NOPM ;
 int FE_RAM8K ;
 int FE_ULTRA2 ;
 int FE_ULTRA3 ;
 unsigned long HTH ;
 int IID ;
 int INB (struct sym_hcb*,int ) ;
 int INW (struct sym_hcb*,int ) ;
 unsigned long MA ;
 int MAX_QUEUE ;
 int MDPE ;
 int NOCOM ;
 int OUTB (struct sym_hcb*,int ,int) ;
 int OUTL (struct sym_hcb*,int ,scalar_t__) ;
 int OUTL_DSP (struct sym_hcb*,scalar_t__) ;
 int OUTONB (struct sym_hcb*,int ,int ) ;
 int OUTONW (struct sym_hcb*,int ,int ) ;
 int OUTW (struct sym_hcb*,int ,unsigned long) ;
 unsigned long PAR ;
 scalar_t__ PCI_DEVICE_ID_LSI_53C1010_33 ;
 scalar_t__ PCI_DEVICE_ID_LSI_53C1010_66 ;
 scalar_t__ PCI_DEVICE_ID_NCR_53C875 ;
 scalar_t__ PCI_DEVICE_ID_NCR_53C896 ;
 int RRE ;
 unsigned long RST ;
 int SBMC ;
 scalar_t__ SCRIPTA_BA (struct sym_hcb*,int ) ;
 scalar_t__ SCRIPTB_BA (struct sym_hcb*,int ) ;
 unsigned long SGE ;
 int SIGP ;
 int SIR ;
 int SMODE ;
 int SSI ;
 unsigned long STO ;
 int SYM_CONF_MAX_LUN ;
 int SYM_CONF_MAX_TARGET ;
 int TE ;
 unsigned long UDC ;
 void* cpu_to_scr (scalar_t__) ;
 int init ;
 int mdelay (int) ;
 int memcpy_toio (scalar_t__,int ,int ) ;
 int nc_aipcntl1 ;
 int nc_ccntl0 ;
 int nc_ccntl1 ;
 int nc_ctest0 ;
 int nc_ctest3 ;
 int nc_ctest4 ;
 int nc_ctest5 ;
 int nc_dcntl ;
 int nc_dien ;
 int nc_dmode ;
 int nc_drs ;
 int nc_dsa ;
 int nc_gpcntl ;
 int nc_istat ;
 int nc_mbox1 ;
 int nc_mmrs ;
 int nc_mmws ;
 int nc_pmjad1 ;
 int nc_pmjad2 ;
 int nc_respid ;
 int nc_scid ;
 int nc_scntl0 ;
 int nc_scntl1 ;
 int * nc_scrx ;
 int nc_sfs ;
 int nc_sien ;
 int nc_sist ;
 int nc_stest1 ;
 int nc_stest2 ;
 int nc_stest3 ;
 int nc_stest4 ;
 int nc_stime0 ;
 int pm_handle ;
 int printf (char*,char*) ;
 scalar_t__ scr_to_cpu (int ) ;
 struct sym_data* shost_priv (struct Scsi_Host*) ;
 int start64 ;
 int stub1 (struct Scsi_Host*) ;
 int sym_flush_busy_queue (struct sym_hcb*,int ) ;
 char* sym_name (struct sym_hcb*) ;
 int sym_selectclock (struct sym_hcb*,int ) ;
 int sym_soft_reset (struct sym_hcb*) ;
 int sym_verbose ;
 int sym_xpt_async_bus_reset (struct sym_hcb*) ;
 int udelay (int) ;
 scalar_t__ use_dac (struct sym_hcb*) ;

void sym_start_up(struct Scsi_Host *shost, int reason)
{
 struct sym_data *sym_data = shost_priv(shost);
 struct pci_dev *pdev = sym_data->pdev;
 struct sym_hcb *np = sym_data->ncb;
  int i;
 u32 phys;




 if (reason == 1)
  sym_soft_reset(np);
 else {
  OUTB(np, nc_stest3, TE|CSF);
  OUTONB(np, nc_ctest3, CLF);
 }




 phys = np->squeue_ba;
 for (i = 0; i < MAX_QUEUE*2; i += 2) {
  np->squeue[i] = cpu_to_scr(np->idletask_ba);
  np->squeue[i+1] = cpu_to_scr(phys + (i+2)*4);
 }
 np->squeue[MAX_QUEUE*2-1] = cpu_to_scr(phys);




 np->squeueput = 0;




 phys = np->dqueue_ba;
 for (i = 0; i < MAX_QUEUE*2; i += 2) {
  np->dqueue[i] = 0;
  np->dqueue[i+1] = cpu_to_scr(phys + (i+2)*4);
 }
 np->dqueue[MAX_QUEUE*2-1] = cpu_to_scr(phys);




 np->dqueueget = 0;






 np->fw_patch(shost);




 sym_flush_busy_queue(np, DID_RESET);




 OUTB(np, nc_istat, 0x00);
 INB(np, nc_mbox1);
 udelay(2000);

 OUTB(np, nc_scntl0, np->rv_scntl0 | 0xc0);

 OUTB(np, nc_scntl1, 0x00);

 sym_selectclock(np, np->rv_scntl3);

 OUTB(np, nc_scid , RRE|np->myaddr);
 OUTW(np, nc_respid, 1ul<<np->myaddr);
 OUTB(np, nc_istat , SIGP );
 OUTB(np, nc_dmode , np->rv_dmode);
 OUTB(np, nc_ctest5, np->rv_ctest5);

 OUTB(np, nc_dcntl , NOCOM|np->rv_dcntl);
 OUTB(np, nc_ctest3, np->rv_ctest3);
 OUTB(np, nc_ctest4, np->rv_ctest4);


 if (np->features & FE_C10)
  OUTB(np, nc_stest2, np->rv_stest2);
 else
  OUTB(np, nc_stest2, EXT|np->rv_stest2);

 OUTB(np, nc_stest3, TE);
 OUTB(np, nc_stime0, 0x0c);




 if (pdev->device == PCI_DEVICE_ID_LSI_53C1010_66)
  OUTB(np, nc_aipcntl1, DISAIP);
 if (pdev->device == PCI_DEVICE_ID_LSI_53C1010_33 &&
     pdev->revision < 1)
  OUTB(np, nc_stest1, INB(np, nc_stest1) | 0x30);






 if (pdev->device == PCI_DEVICE_ID_NCR_53C875)
  OUTB(np, nc_ctest0, (1<<5));
 else if (pdev->device == PCI_DEVICE_ID_NCR_53C896)
  np->rv_ccntl0 |= DPR;






 if (np->features & (FE_DAC|FE_NOPM)) {
  OUTB(np, nc_ccntl0, np->rv_ccntl0);
  OUTB(np, nc_ccntl1, np->rv_ccntl1);
 }
 if (np->features & FE_NOPM) {
  OUTL(np, nc_pmjad1, SCRIPTB_BA(np, pm_handle));
  OUTL(np, nc_pmjad2, SCRIPTB_BA(np, pm_handle));
 }





 if (np->features & FE_LED0)
  OUTB(np, nc_gpcntl, INB(np, nc_gpcntl) & ~0x01);
 else if (np->features & FE_LEDC)
  OUTB(np, nc_gpcntl, (INB(np, nc_gpcntl) & ~0x41) | 0x20);




 OUTW(np, nc_sien , STO|HTH|MA|SGE|UDC|RST|PAR);
 OUTB(np, nc_dien , MDPE|BF|SSI|SIR|IID);






 if (np->features & (FE_ULTRA2|FE_ULTRA3)) {
  OUTONW(np, nc_sien, SBMC);
  if (reason == 0) {
   INB(np, nc_mbox1);
   mdelay(100);
   INW(np, nc_sist);
  }
  np->scsi_mode = INB(np, nc_stest4) & SMODE;
 }







 for (i=0;i<SYM_CONF_MAX_TARGET;i++) {
  struct sym_tcb *tp = &np->target[i];

  tp->to_reset = 0;
  tp->head.sval = 0;
  tp->head.wval = np->rv_scntl3;
  tp->head.uval = 0;
  if (tp->lun0p)
   tp->lun0p->to_clear = 0;
  if (tp->lunmp) {
   int ln;

   for (ln = 1; ln < SYM_CONF_MAX_LUN; ln++)
    if (tp->lunmp[ln])
     tp->lunmp[ln]->to_clear = 0;
  }
 }
 phys = SCRIPTA_BA(np, init);
 if (np->ram_ba) {
  if (sym_verbose >= 2)
   printf("%s: Downloading SCSI SCRIPTS.\n", sym_name(np));
  memcpy_toio(np->s.ramaddr, np->scripta0, np->scripta_sz);
  if (np->features & FE_RAM8K) {
   memcpy_toio(np->s.ramaddr + 4096, np->scriptb0, np->scriptb_sz);
   phys = scr_to_cpu(np->scr_ram_seg);
   OUTL(np, nc_mmws, phys);
   OUTL(np, nc_mmrs, phys);
   OUTL(np, nc_sfs, phys);
   phys = SCRIPTB_BA(np, start64);
  }
 }

 np->istat_sem = 0;

 OUTL(np, nc_dsa, np->hcb_ba);
 OUTL_DSP(np, phys);




 if (reason != 0)
  sym_xpt_async_bus_reset(np);
}
