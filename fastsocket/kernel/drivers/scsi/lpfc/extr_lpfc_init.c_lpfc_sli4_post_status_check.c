
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_register {int word0; } ;
struct TYPE_6__ {int ERR2regaddr; int ERR1regaddr; int STATUSregaddr; } ;
struct TYPE_5__ {int UERRHIregaddr; int UERRLOregaddr; int UEMASKHIregaddr; int UEMASKLOregaddr; } ;
struct TYPE_7__ {TYPE_2__ if_type2; TYPE_1__ if_type0; } ;
struct TYPE_8__ {int ue_mask_lo; int ue_mask_hi; TYPE_3__ u; struct lpfc_register sli_intf; int PSMPHRregaddr; } ;
struct lpfc_hba {int* work_status; TYPE_4__ sli4_hba; } ;
typedef int reg_data ;
typedef int portsmphr_reg ;


 int ENODEV ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_INIT ;
 scalar_t__ LPFC_POST_STAGE_PORT_READY ;



 scalar_t__ bf_get (int ,struct lpfc_register*) ;
 int lpfc_port_smphr_host_scratch ;
 int lpfc_port_smphr_ipc ;
 int lpfc_port_smphr_nip ;
 int lpfc_port_smphr_perr ;
 int lpfc_port_smphr_port_status ;
 int lpfc_port_smphr_scr1 ;
 int lpfc_port_smphr_scr2 ;
 int lpfc_port_smphr_sfi ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int,int,int,int,...) ;
 scalar_t__ lpfc_readl (int ,int*) ;
 int lpfc_sli_intf_func_type ;
 int lpfc_sli_intf_if_type ;
 int lpfc_sli_intf_sli_family ;
 int lpfc_sli_intf_sli_hint1 ;
 int lpfc_sli_intf_sli_hint2 ;
 int lpfc_sli_intf_slirev ;
 int lpfc_sliport_status_err ;
 int lpfc_sliport_status_rn ;
 int memset (struct lpfc_register*,int ,int) ;
 int msleep (int) ;
 void* readl (int ) ;

int
lpfc_sli4_post_status_check(struct lpfc_hba *phba)
{
 struct lpfc_register portsmphr_reg, uerrlo_reg, uerrhi_reg;
 struct lpfc_register reg_data;
 int i, port_error = 0;
 uint32_t if_type;

 memset(&portsmphr_reg, 0, sizeof(portsmphr_reg));
 memset(&reg_data, 0, sizeof(reg_data));
 if (!phba->sli4_hba.PSMPHRregaddr)
  return -ENODEV;


 for (i = 0; i < 3000; i++) {
  if (lpfc_readl(phba->sli4_hba.PSMPHRregaddr,
   &portsmphr_reg.word0) ||
   (bf_get(lpfc_port_smphr_perr, &portsmphr_reg))) {

   port_error = -ENODEV;
   break;
  }
  if (LPFC_POST_STAGE_PORT_READY ==
      bf_get(lpfc_port_smphr_port_status, &portsmphr_reg))
   break;
  msleep(10);
 }





 if (port_error) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
   "1408 Port Failed POST - portsmphr=0x%x, "
   "perr=x%x, sfi=x%x, nip=x%x, ipc=x%x, scr1=x%x, "
   "scr2=x%x, hscratch=x%x, pstatus=x%x\n",
   portsmphr_reg.word0,
   bf_get(lpfc_port_smphr_perr, &portsmphr_reg),
   bf_get(lpfc_port_smphr_sfi, &portsmphr_reg),
   bf_get(lpfc_port_smphr_nip, &portsmphr_reg),
   bf_get(lpfc_port_smphr_ipc, &portsmphr_reg),
   bf_get(lpfc_port_smphr_scr1, &portsmphr_reg),
   bf_get(lpfc_port_smphr_scr2, &portsmphr_reg),
   bf_get(lpfc_port_smphr_host_scratch, &portsmphr_reg),
   bf_get(lpfc_port_smphr_port_status, &portsmphr_reg));
 } else {
  lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
    "2534 Device Info: SLIFamily=0x%x, "
    "SLIRev=0x%x, IFType=0x%x, SLIHint_1=0x%x, "
    "SLIHint_2=0x%x, FT=0x%x\n",
    bf_get(lpfc_sli_intf_sli_family,
           &phba->sli4_hba.sli_intf),
    bf_get(lpfc_sli_intf_slirev,
           &phba->sli4_hba.sli_intf),
    bf_get(lpfc_sli_intf_if_type,
           &phba->sli4_hba.sli_intf),
    bf_get(lpfc_sli_intf_sli_hint1,
           &phba->sli4_hba.sli_intf),
    bf_get(lpfc_sli_intf_sli_hint2,
           &phba->sli4_hba.sli_intf),
    bf_get(lpfc_sli_intf_func_type,
           &phba->sli4_hba.sli_intf));





  if_type = bf_get(lpfc_sli_intf_if_type,
     &phba->sli4_hba.sli_intf);
  switch (if_type) {
  case 130:
   phba->sli4_hba.ue_mask_lo =
         readl(phba->sli4_hba.u.if_type0.UEMASKLOregaddr);
   phba->sli4_hba.ue_mask_hi =
         readl(phba->sli4_hba.u.if_type0.UEMASKHIregaddr);
   uerrlo_reg.word0 =
         readl(phba->sli4_hba.u.if_type0.UERRLOregaddr);
   uerrhi_reg.word0 =
    readl(phba->sli4_hba.u.if_type0.UERRHIregaddr);
   if ((~phba->sli4_hba.ue_mask_lo & uerrlo_reg.word0) ||
       (~phba->sli4_hba.ue_mask_hi & uerrhi_reg.word0)) {
    lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
      "1422 Unrecoverable Error "
      "Detected during POST "
      "uerr_lo_reg=0x%x, "
      "uerr_hi_reg=0x%x, "
      "ue_mask_lo_reg=0x%x, "
      "ue_mask_hi_reg=0x%x\n",
      uerrlo_reg.word0,
      uerrhi_reg.word0,
      phba->sli4_hba.ue_mask_lo,
      phba->sli4_hba.ue_mask_hi);
    port_error = -ENODEV;
   }
   break;
  case 128:

   if (lpfc_readl(phba->sli4_hba.u.if_type2.STATUSregaddr,
    &reg_data.word0) ||
    (bf_get(lpfc_sliport_status_err, &reg_data) &&
     !bf_get(lpfc_sliport_status_rn, &reg_data))) {
    phba->work_status[0] =
     readl(phba->sli4_hba.u.if_type2.
           ERR1regaddr);
    phba->work_status[1] =
     readl(phba->sli4_hba.u.if_type2.
           ERR2regaddr);
    lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
     "2888 Unrecoverable port error "
     "following POST: port status reg "
     "0x%x, port_smphr reg 0x%x, "
     "error 1=0x%x, error 2=0x%x\n",
     reg_data.word0,
     portsmphr_reg.word0,
     phba->work_status[0],
     phba->work_status[1]);
    port_error = -ENODEV;
   }
   break;
  case 129:
  default:
   break;
  }
 }
 return port_error;
}
