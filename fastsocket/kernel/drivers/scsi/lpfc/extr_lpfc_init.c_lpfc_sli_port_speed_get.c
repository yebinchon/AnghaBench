
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_hba {int fc_linkspeed; } ;
 int lpfc_is_link_up (struct lpfc_hba*) ;

uint32_t
lpfc_sli_port_speed_get(struct lpfc_hba *phba)
{
 uint32_t link_speed;

 if (!lpfc_is_link_up(phba))
  return 0;

 switch (phba->fc_linkspeed) {
 case 131:
  link_speed = 1000;
  break;
 case 130:
  link_speed = 2000;
  break;
 case 129:
  link_speed = 4000;
  break;
 case 128:
  link_speed = 8000;
  break;
 case 133:
  link_speed = 10000;
  break;
 case 132:
  link_speed = 16000;
  break;
 default:
  link_speed = 0;
 }
 return link_speed;
}
