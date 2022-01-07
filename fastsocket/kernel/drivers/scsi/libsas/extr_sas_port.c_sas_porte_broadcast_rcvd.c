
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct work_struct {int dummy; } ;
struct asd_sas_phy {int port; int sas_prim_lock; int sas_prim; int port_events_pending; } ;
struct asd_sas_event {struct asd_sas_phy* phy; } ;


 int DISCE_REVALIDATE_DOMAIN ;
 int PORTE_BROADCAST_RCVD ;
 int SAS_DPRINTK (char*,int ) ;
 int clear_bit (int ,int *) ;
 int sas_discover_event (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct asd_sas_event* to_asd_sas_event (struct work_struct*) ;

void sas_porte_broadcast_rcvd(struct work_struct *work)
{
 struct asd_sas_event *ev = to_asd_sas_event(work);
 struct asd_sas_phy *phy = ev->phy;
 unsigned long flags;
 u32 prim;

 clear_bit(PORTE_BROADCAST_RCVD, &phy->port_events_pending);

 spin_lock_irqsave(&phy->sas_prim_lock, flags);
 prim = phy->sas_prim;
 spin_unlock_irqrestore(&phy->sas_prim_lock, flags);

 SAS_DPRINTK("broadcast received: %d\n", prim);
 sas_discover_event(phy->port, DISCE_REVALIDATE_DOMAIN);
}
