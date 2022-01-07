
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_vport {int fc_flag; int port_state; struct lpfc_hba* phba; } ;
struct TYPE_2__ {int sli_flag; } ;
struct lpfc_hba {int link_state; int hba_flag; int fc_topology; TYPE_1__ sli; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;


 int FC_FABRIC ;
 int FC_PUBLIC_LOOP ;
 int LINK_DISABLED ;
 int LPFC_MENLO_MAINT ;


 int LPFC_TOPOLOGY_LOOP ;




 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int snprintf (char*,int ,char*) ;

__attribute__((used)) static ssize_t
lpfc_link_state_show(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
 struct lpfc_hba *phba = vport->phba;
 int len = 0;

 switch (phba->link_state) {
 case 136:
 case 128:
 case 138:
 case 139:
 case 137:
 case 141:
  if (phba->hba_flag & LINK_DISABLED)
   len += snprintf(buf + len, PAGE_SIZE-len,
    "Link Down - User disabled\n");
  else
   len += snprintf(buf + len, PAGE_SIZE-len,
    "Link Down\n");
  break;
 case 135:
 case 146:
 case 140:
  len += snprintf(buf + len, PAGE_SIZE-len, "Link Up - ");

  switch (vport->port_state) {
  case 134:
   len += snprintf(buf + len, PAGE_SIZE-len,
     "Configuring Link\n");
   break;
  case 143:
  case 142:
  case 144:
  case 132:
  case 133:
  case 147:
  case 145:
   len += snprintf(buf + len, PAGE_SIZE - len,
     "Discovery\n");
   break;
  case 130:
   len += snprintf(buf + len, PAGE_SIZE - len, "Ready\n");
   break;

  case 131:
   len += snprintf(buf + len, PAGE_SIZE - len, "Failed\n");
   break;

  case 129:
   len += snprintf(buf + len, PAGE_SIZE - len,
     "Unknown\n");
   break;
  }
  if (phba->sli.sli_flag & LPFC_MENLO_MAINT)
   len += snprintf(buf + len, PAGE_SIZE-len,
     "   Menlo Maint Mode\n");
  else if (phba->fc_topology == LPFC_TOPOLOGY_LOOP) {
   if (vport->fc_flag & FC_PUBLIC_LOOP)
    len += snprintf(buf + len, PAGE_SIZE-len,
      "   Public Loop\n");
   else
    len += snprintf(buf + len, PAGE_SIZE-len,
      "   Private Loop\n");
  } else {
   if (vport->fc_flag & FC_FABRIC)
    len += snprintf(buf + len, PAGE_SIZE-len,
      "   Fabric\n");
   else
    len += snprintf(buf + len, PAGE_SIZE-len,
      "   Point-2-Point\n");
  }
 }

 return len;
}
