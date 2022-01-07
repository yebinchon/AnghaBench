
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct lpfc_hba {int dummy; } ;
struct lpfc_acqe_link {int dummy; } ;


 int KERN_ERR ;
 int LOG_INIT ;





 int LPFC_LINK_SPEED_10GHZ ;
 int LPFC_LINK_SPEED_1GHZ ;
 int LPFC_LINK_SPEED_UNKNOWN ;
 int bf_get (int ,struct lpfc_acqe_link*) ;
 int lpfc_acqe_link_speed ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int) ;

__attribute__((used)) static uint8_t
lpfc_sli4_parse_latt_link_speed(struct lpfc_hba *phba,
    struct lpfc_acqe_link *acqe_link)
{
 uint8_t link_speed;

 switch (bf_get(lpfc_acqe_link_speed, acqe_link)) {
 case 128:
 case 130:
 case 132:
  link_speed = LPFC_LINK_SPEED_UNKNOWN;
  break;
 case 129:
  link_speed = LPFC_LINK_SPEED_1GHZ;
  break;
 case 131:
  link_speed = LPFC_LINK_SPEED_10GHZ;
  break;
 default:
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "0483 Invalid link-attention link speed: x%x\n",
    bf_get(lpfc_acqe_link_speed, acqe_link));
  link_speed = LPFC_LINK_SPEED_UNKNOWN;
  break;
 }
 return link_speed;
}
