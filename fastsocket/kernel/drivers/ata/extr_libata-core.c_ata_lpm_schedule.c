
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int action; } ;
struct TYPE_4__ {TYPE_1__ eh_info; } ;
struct ata_port {int pm_policy; TYPE_2__ link; } ;
typedef enum link_pm { ____Placeholder_link_pm } link_pm ;


 int ATA_EHI_NO_AUTOPSY ;
 int ATA_EH_LPM ;
 int ata_port_schedule_eh (struct ata_port*) ;

void ata_lpm_schedule(struct ata_port *ap, enum link_pm policy)
{
 ap->pm_policy = policy;
 ap->link.eh_info.action |= ATA_EH_LPM;
 ap->link.eh_info.flags |= ATA_EHI_NO_AUTOPSY;
 ata_port_schedule_eh(ap);
}
