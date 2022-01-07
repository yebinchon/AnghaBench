
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct lpfc_hba {int dummy; } ;
struct lpfc_acqe_link {int dummy; } ;


 int KERN_ERR ;
 int LOG_INIT ;



 int MBXERR_ERROR ;
 int bf_get (int ,struct lpfc_acqe_link*) ;
 int lpfc_acqe_link_fault ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int) ;

__attribute__((used)) static uint16_t
lpfc_sli4_parse_latt_fault(struct lpfc_hba *phba,
      struct lpfc_acqe_link *acqe_link)
{
 uint16_t latt_fault;

 switch (bf_get(lpfc_acqe_link_fault, acqe_link)) {
 case 129:
 case 130:
 case 128:
  latt_fault = 0;
  break;
 default:
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "0398 Invalid link fault code: x%x\n",
    bf_get(lpfc_acqe_link_fault, acqe_link));
  latt_fault = MBXERR_ERROR;
  break;
 }
 return latt_fault;
}
