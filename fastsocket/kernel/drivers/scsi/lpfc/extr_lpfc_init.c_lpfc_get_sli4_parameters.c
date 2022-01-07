
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_sli4_parameters {scalar_t__ sge_supp_len; } ;
struct lpfc_sli4_cfg_mhdr {int dummy; } ;
struct lpfc_pc_sli4_params {scalar_t__ sge_supp_len; void* sgl_pp_align; void* sgl_pages_max; void* rqv; void* wqv; void* mqv; void* cqv; void* loopbk_scope; void* featurelevel_2; void* featurelevel_1; void* sli_family; void* sli_rev; void* if_type; } ;
struct TYPE_12__ {struct lpfc_sli4_parameters sli4_parameters; } ;
struct TYPE_13__ {TYPE_2__ get_sli4_parameters; } ;
struct lpfc_mqe {TYPE_3__ un; } ;
struct lpfc_mbx_get_sli4_parameters {int dummy; } ;
struct TYPE_14__ {int rpi_hdrs_in_use; void* extents_in_use; struct lpfc_pc_sli4_params pc_sli4_params; int intr_enable; } ;
struct lpfc_hba {TYPE_4__ sli4_hba; int sli3_options; } ;
struct TYPE_11__ {struct lpfc_mqe mqe; } ;
struct TYPE_15__ {TYPE_1__ u; } ;
typedef TYPE_5__ LPFC_MBOXQ_t ;


 scalar_t__ LPFC_MAX_SGE_SIZE ;
 int LPFC_MBOX_OPCODE_GET_SLI4_PARAMETERS ;
 int LPFC_MBOX_SUBSYSTEM_COMMON ;
 int LPFC_SLI4_MBX_EMBED ;
 int LPFC_SLI4_PHWQ_ENABLED ;
 int MBX_POLL ;
 void* bf_get (int ,struct lpfc_sli4_parameters*) ;
 int cfg_cqv ;
 int cfg_ext ;
 int cfg_hdrr ;
 int cfg_if_type ;
 int cfg_mqv ;
 int cfg_phwq ;
 int cfg_rqv ;
 int cfg_sgl_page_cnt ;
 int cfg_sgl_pp_align ;
 int cfg_sli_family ;
 int cfg_sli_hint_1 ;
 int cfg_sli_hint_2 ;
 int cfg_sli_rev ;
 int cfg_wqv ;
 int loopbk_scope ;
 int lpfc_mbox_tmo_val (struct lpfc_hba*,TYPE_5__*) ;
 int lpfc_sli4_config (struct lpfc_hba*,TYPE_5__*,int ,int ,int,int ) ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_5__*,int ) ;
 int lpfc_sli_issue_mbox_wait (struct lpfc_hba*,TYPE_5__*,int ) ;
 scalar_t__ unlikely (int) ;

int
lpfc_get_sli4_parameters(struct lpfc_hba *phba, LPFC_MBOXQ_t *mboxq)
{
 int rc;
 struct lpfc_mqe *mqe = &mboxq->u.mqe;
 struct lpfc_pc_sli4_params *sli4_params;
 uint32_t mbox_tmo;
 int length;
 struct lpfc_sli4_parameters *mbx_sli4_parameters;






 phba->sli4_hba.rpi_hdrs_in_use = 1;


 length = (sizeof(struct lpfc_mbx_get_sli4_parameters) -
    sizeof(struct lpfc_sli4_cfg_mhdr));
 lpfc_sli4_config(phba, mboxq, LPFC_MBOX_SUBSYSTEM_COMMON,
    LPFC_MBOX_OPCODE_GET_SLI4_PARAMETERS,
    length, LPFC_SLI4_MBX_EMBED);
 if (!phba->sli4_hba.intr_enable)
  rc = lpfc_sli_issue_mbox(phba, mboxq, MBX_POLL);
 else {
  mbox_tmo = lpfc_mbox_tmo_val(phba, mboxq);
  rc = lpfc_sli_issue_mbox_wait(phba, mboxq, mbox_tmo);
 }
 if (unlikely(rc))
  return rc;
 sli4_params = &phba->sli4_hba.pc_sli4_params;
 mbx_sli4_parameters = &mqe->un.get_sli4_parameters.sli4_parameters;
 sli4_params->if_type = bf_get(cfg_if_type, mbx_sli4_parameters);
 sli4_params->sli_rev = bf_get(cfg_sli_rev, mbx_sli4_parameters);
 sli4_params->sli_family = bf_get(cfg_sli_family, mbx_sli4_parameters);
 sli4_params->featurelevel_1 = bf_get(cfg_sli_hint_1,
          mbx_sli4_parameters);
 sli4_params->featurelevel_2 = bf_get(cfg_sli_hint_2,
          mbx_sli4_parameters);
 if (bf_get(cfg_phwq, mbx_sli4_parameters))
  phba->sli3_options |= LPFC_SLI4_PHWQ_ENABLED;
 else
  phba->sli3_options &= ~LPFC_SLI4_PHWQ_ENABLED;
 sli4_params->sge_supp_len = mbx_sli4_parameters->sge_supp_len;
 sli4_params->loopbk_scope = bf_get(loopbk_scope, mbx_sli4_parameters);
 sli4_params->cqv = bf_get(cfg_cqv, mbx_sli4_parameters);
 sli4_params->mqv = bf_get(cfg_mqv, mbx_sli4_parameters);
 sli4_params->wqv = bf_get(cfg_wqv, mbx_sli4_parameters);
 sli4_params->rqv = bf_get(cfg_rqv, mbx_sli4_parameters);
 sli4_params->sgl_pages_max = bf_get(cfg_sgl_page_cnt,
         mbx_sli4_parameters);
 sli4_params->sgl_pp_align = bf_get(cfg_sgl_pp_align,
        mbx_sli4_parameters);
 phba->sli4_hba.extents_in_use = bf_get(cfg_ext, mbx_sli4_parameters);
 phba->sli4_hba.rpi_hdrs_in_use = bf_get(cfg_hdrr, mbx_sli4_parameters);


 if (sli4_params->sge_supp_len > LPFC_MAX_SGE_SIZE)
  sli4_params->sge_supp_len = LPFC_MAX_SGE_SIZE;

 return 0;
}
