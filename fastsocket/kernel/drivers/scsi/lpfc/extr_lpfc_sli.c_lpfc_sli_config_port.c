
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef int uint32_t ;
struct TYPE_22__ {int sli_flag; } ;
struct lpfc_hba {int sli_rev; int sli3_options; int mbox_mem_pool; scalar_t__ max_vpi; TYPE_4__* mbox; int port_gp; int * hbq_get; scalar_t__ cfg_enable_bg; int fips_spec_rev; int fips_level; scalar_t__ max_vports; int hbalock; TYPE_6__ sli; int link_state; TYPE_5__* pport; } ;
struct TYPE_23__ {int casabt; scalar_t__ gasabt; int sli_mode; scalar_t__ gbg; scalar_t__ gcrp; scalar_t__ gerbm; scalar_t__ sec_err; int fips_rev; int fips_level; scalar_t__ gdss; scalar_t__ max_vpi; scalar_t__ gmv; int cMA; } ;
struct TYPE_24__ {TYPE_7__ varCfgPort; } ;
struct TYPE_15__ {TYPE_8__ un; int mbxStatus; int mbxCommand; } ;
struct TYPE_25__ {TYPE_10__ mb; } ;
struct TYPE_21__ {int port_state; } ;
struct TYPE_18__ {int port; } ;
struct TYPE_17__ {int port; int * hbq_get; } ;
struct TYPE_19__ {TYPE_2__ s2; TYPE_1__ s3_pgp; } ;
struct TYPE_20__ {TYPE_3__ us; } ;
struct TYPE_16__ {TYPE_9__ u; } ;
typedef TYPE_11__ LPFC_MBOXQ_t ;


 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int ERESTART ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int KERN_INFO ;
 int KERN_WARNING ;
 int LOG_INIT ;
 int LPFC_HBA_ERROR ;
 int LPFC_INIT_MBX_CMDS ;
 int LPFC_LINK_UNKNOWN ;
 int LPFC_SLI3_BG_ENABLED ;
 int LPFC_SLI3_CRP_ENABLED ;
 int LPFC_SLI3_DSS_ENABLED ;
 int LPFC_SLI3_HBQ_ENABLED ;
 int LPFC_SLI3_NPIV_ENABLED ;
 int LPFC_SLI_ACTIVE ;
 int LPFC_SLI_ASYNC_MBX_BLK ;
 int LPFC_SLI_MBOX_ACTIVE ;
 int LPFC_VPORT_UNKNOWN ;
 int MBX_POLL ;
 int MBX_SUCCESS ;
 int lpfc_config_port (struct lpfc_hba*,TYPE_11__*) ;
 int lpfc_config_port_prep (struct lpfc_hba*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,...) ;
 int lpfc_sli_brdrestart (struct lpfc_hba*) ;
 int lpfc_sli_chipset_init (struct lpfc_hba*) ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_11__*,int ) ;
 scalar_t__ mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_11__*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int
lpfc_sli_config_port(struct lpfc_hba *phba, int sli_mode)
{
 LPFC_MBOXQ_t *pmb;
 uint32_t resetcount = 0, rc = 0, done = 0;

 pmb = (LPFC_MBOXQ_t *) mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL);
 if (!pmb) {
  phba->link_state = LPFC_HBA_ERROR;
  return -ENOMEM;
 }

 phba->sli_rev = sli_mode;
 while (resetcount < 2 && !done) {
  spin_lock_irq(&phba->hbalock);
  phba->sli.sli_flag |= LPFC_SLI_MBOX_ACTIVE;
  spin_unlock_irq(&phba->hbalock);
  phba->pport->port_state = LPFC_VPORT_UNKNOWN;
  lpfc_sli_brdrestart(phba);
  rc = lpfc_sli_chipset_init(phba);
  if (rc)
   break;

  spin_lock_irq(&phba->hbalock);
  phba->sli.sli_flag &= ~LPFC_SLI_MBOX_ACTIVE;
  spin_unlock_irq(&phba->hbalock);
  resetcount++;






  rc = lpfc_config_port_prep(phba);
  if (rc == -ERESTART) {
   phba->link_state = LPFC_LINK_UNKNOWN;
   continue;
  } else if (rc)
   break;

  phba->link_state = LPFC_INIT_MBX_CMDS;
  lpfc_config_port(phba, pmb);
  rc = lpfc_sli_issue_mbox(phba, pmb, MBX_POLL);
  phba->sli3_options &= ~(LPFC_SLI3_NPIV_ENABLED |
     LPFC_SLI3_HBQ_ENABLED |
     LPFC_SLI3_CRP_ENABLED |
     LPFC_SLI3_BG_ENABLED |
     LPFC_SLI3_DSS_ENABLED);
  if (rc != MBX_SUCCESS) {
   lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "0442 Adapter failed to init, mbxCmd x%x "
    "CONFIG_PORT, mbxStatus x%x Data: x%x\n",
    pmb->u.mb.mbxCommand, pmb->u.mb.mbxStatus, 0);
   spin_lock_irq(&phba->hbalock);
   phba->sli.sli_flag &= ~LPFC_SLI_ACTIVE;
   spin_unlock_irq(&phba->hbalock);
   rc = -ENXIO;
  } else {

   spin_lock_irq(&phba->hbalock);
   phba->sli.sli_flag &= ~LPFC_SLI_ASYNC_MBX_BLK;
   spin_unlock_irq(&phba->hbalock);
   done = 1;

   if ((pmb->u.mb.un.varCfgPort.casabt == 1) &&
       (pmb->u.mb.un.varCfgPort.gasabt == 0))
    lpfc_printf_log(phba, KERN_WARNING, LOG_INIT,
     "3110 Port did not grant ASABT\n");
  }
 }
 if (!done) {
  rc = -EINVAL;
  goto do_prep_failed;
 }
 if (pmb->u.mb.un.varCfgPort.sli_mode == 3) {
  if (!pmb->u.mb.un.varCfgPort.cMA) {
   rc = -ENXIO;
   goto do_prep_failed;
  }
  if (phba->max_vpi && pmb->u.mb.un.varCfgPort.gmv) {
   phba->sli3_options |= LPFC_SLI3_NPIV_ENABLED;
   phba->max_vpi = pmb->u.mb.un.varCfgPort.max_vpi;
   phba->max_vports = (phba->max_vpi > phba->max_vports) ?
    phba->max_vpi : phba->max_vports;

  } else
   phba->max_vpi = 0;
  phba->fips_level = 0;
  phba->fips_spec_rev = 0;
  if (pmb->u.mb.un.varCfgPort.gdss) {
   phba->sli3_options |= LPFC_SLI3_DSS_ENABLED;
   phba->fips_level = pmb->u.mb.un.varCfgPort.fips_level;
   phba->fips_spec_rev = pmb->u.mb.un.varCfgPort.fips_rev;
   lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
     "2850 Security Crypto Active. FIPS x%d "
     "(Spec Rev: x%d)",
     phba->fips_level, phba->fips_spec_rev);
  }
  if (pmb->u.mb.un.varCfgPort.sec_err) {
   lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
     "2856 Config Port Security Crypto "
     "Error: x%x ",
     pmb->u.mb.un.varCfgPort.sec_err);
  }
  if (pmb->u.mb.un.varCfgPort.gerbm)
   phba->sli3_options |= LPFC_SLI3_HBQ_ENABLED;
  if (pmb->u.mb.un.varCfgPort.gcrp)
   phba->sli3_options |= LPFC_SLI3_CRP_ENABLED;

  phba->hbq_get = phba->mbox->us.s3_pgp.hbq_get;
  phba->port_gp = phba->mbox->us.s3_pgp.port;

  if (phba->cfg_enable_bg) {
   if (pmb->u.mb.un.varCfgPort.gbg)
    phba->sli3_options |= LPFC_SLI3_BG_ENABLED;
   else
    lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
      "0443 Adapter did not grant "
      "BlockGuard\n");
  }
 } else {
  phba->hbq_get = ((void*)0);
  phba->port_gp = phba->mbox->us.s2.port;
  phba->max_vpi = 0;
 }
do_prep_failed:
 mempool_free(pmb, phba->mbox_mem_pool);
 return rc;
}
