
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct lpfc_sli {int dummy; } ;
struct TYPE_11__ {int feaLevelHigh; } ;
struct TYPE_14__ {TYPE_2__ rev; } ;
struct lpfc_hba {int fc_pref_ALPA; TYPE_5__ vpd; struct lpfc_sli sli; } ;
typedef TYPE_5__ lpfc_vpd_t ;
struct TYPE_12__ {int link_flags; int fabric_AL_PA; void* link_speed; } ;
struct TYPE_13__ {TYPE_3__ varInitLnk; } ;
struct TYPE_15__ {TYPE_4__ un; int mbxOwner; scalar_t__ mbxCommand; } ;
struct TYPE_10__ {TYPE_6__ mb; } ;
struct TYPE_16__ {TYPE_1__ u; } ;
typedef TYPE_6__ MAILBOX_t ;
typedef TYPE_7__ LPFC_MBOXQ_t ;


 int FLAGS_IMED_ABORT ;
 int FLAGS_LINK_SPEED ;

 int FLAGS_TOPOLOGY_FAILOVER ;




 void* LINK_SPEED_10G ;
 void* LINK_SPEED_16G ;
 void* LINK_SPEED_1G ;
 void* LINK_SPEED_2G ;
 void* LINK_SPEED_4G ;
 void* LINK_SPEED_8G ;
 void* LINK_SPEED_AUTO ;







 scalar_t__ MBX_INIT_LINK ;
 int OWN_HOST ;
 int memset (TYPE_7__*,int ,int) ;

void
lpfc_init_link(struct lpfc_hba * phba,
        LPFC_MBOXQ_t * pmb, uint32_t topology, uint32_t linkspeed)
{
 lpfc_vpd_t *vpd;
 struct lpfc_sli *psli;
 MAILBOX_t *mb;

 mb = &pmb->u.mb;
 memset(pmb, 0, sizeof (LPFC_MBOXQ_t));

 psli = &phba->sli;
 switch (topology) {
 case 137:
  mb->un.varInitLnk.link_flags = 138;
  mb->un.varInitLnk.link_flags |= FLAGS_TOPOLOGY_FAILOVER;
  break;
 case 135:
  mb->un.varInitLnk.link_flags = 135;
  break;
 case 138:
  mb->un.varInitLnk.link_flags = 138;
  break;
 case 136:
  mb->un.varInitLnk.link_flags = 135;
  mb->un.varInitLnk.link_flags |= FLAGS_TOPOLOGY_FAILOVER;
  break;
 case 139:
  mb->un.varInitLnk.link_flags = 139;
  break;
 }


 mb->un.varInitLnk.link_flags |= FLAGS_IMED_ABORT;




 vpd = &phba->vpd;
 if (vpd->rev.feaLevelHigh >= 0x02){
  switch(linkspeed){
  case 132:
   mb->un.varInitLnk.link_flags |= FLAGS_LINK_SPEED;
   mb->un.varInitLnk.link_speed = LINK_SPEED_1G;
   break;
  case 131:
   mb->un.varInitLnk.link_flags |= FLAGS_LINK_SPEED;
   mb->un.varInitLnk.link_speed = LINK_SPEED_2G;
   break;
  case 130:
   mb->un.varInitLnk.link_flags |= FLAGS_LINK_SPEED;
   mb->un.varInitLnk.link_speed = LINK_SPEED_4G;
   break;
  case 129:
   mb->un.varInitLnk.link_flags |= FLAGS_LINK_SPEED;
   mb->un.varInitLnk.link_speed = LINK_SPEED_8G;
   break;
  case 134:
   mb->un.varInitLnk.link_flags |= FLAGS_LINK_SPEED;
   mb->un.varInitLnk.link_speed = LINK_SPEED_10G;
   break;
  case 133:
   mb->un.varInitLnk.link_flags |= FLAGS_LINK_SPEED;
   mb->un.varInitLnk.link_speed = LINK_SPEED_16G;
   break;
  case 128:
  default:
   mb->un.varInitLnk.link_speed = LINK_SPEED_AUTO;
   break;
  }

 }
 else
  mb->un.varInitLnk.link_speed = LINK_SPEED_AUTO;

 mb->mbxCommand = (volatile uint8_t)MBX_INIT_LINK;
 mb->mbxOwner = OWN_HOST;
 mb->un.varInitLnk.fabric_AL_PA = phba->fc_pref_ALPA;
 return;
}
