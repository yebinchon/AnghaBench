
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asd_sas_phy {unsigned int id; } ;
struct asd_port {unsigned int phy_mask; int num_phys; } ;
struct asd_phy {struct asd_port* asd_port; struct asd_sas_phy sas_phy; } ;
struct asd_ha_struct {int asd_ports_lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void asd_deform_port(struct asd_ha_struct *asd_ha, struct asd_phy *phy)
{
 struct asd_port *port = phy->asd_port;
 struct asd_sas_phy *sas_phy = &phy->sas_phy;
 unsigned long flags;

 spin_lock_irqsave(&asd_ha->asd_ports_lock, flags);
 if (port) {
  port->num_phys--;
  port->phy_mask &= ~(1U << sas_phy->id);
  phy->asd_port = ((void*)0);
 }
 spin_unlock_irqrestore(&asd_ha->asd_ports_lock, flags);
}
