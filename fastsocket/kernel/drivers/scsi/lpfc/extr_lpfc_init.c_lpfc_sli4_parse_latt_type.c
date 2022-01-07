
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct lpfc_hba {int dummy; } ;
struct lpfc_acqe_link {int dummy; } ;


 int KERN_ERR ;
 int LOG_INIT ;




 int LPFC_ATT_LINK_DOWN ;
 int LPFC_ATT_LINK_UP ;
 int LPFC_ATT_RESERVED ;
 int bf_get (int ,struct lpfc_acqe_link*) ;
 int lpfc_acqe_link_status ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int) ;

__attribute__((used)) static uint8_t
lpfc_sli4_parse_latt_type(struct lpfc_hba *phba,
     struct lpfc_acqe_link *acqe_link)
{
 uint8_t att_type;

 switch (bf_get(lpfc_acqe_link_status, acqe_link)) {
 case 131:
 case 130:
  att_type = LPFC_ATT_LINK_DOWN;
  break;
 case 128:

  att_type = LPFC_ATT_RESERVED;
  break;
 case 129:
  att_type = LPFC_ATT_LINK_UP;
  break;
 default:
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "0399 Invalid link attention type: x%x\n",
    bf_get(lpfc_acqe_link_status, acqe_link));
  att_type = LPFC_ATT_RESERVED;
  break;
 }
 return att_type;
}
