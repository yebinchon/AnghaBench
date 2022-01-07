
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct domain_device {int * lldd_dev; TYPE_2__* port; } ;
struct TYPE_6__ {int ddb_lock; } ;
struct asd_ha_struct {TYPE_3__ hw_prof; } ;
struct TYPE_5__ {TYPE_1__* ha; } ;
struct TYPE_4__ {struct asd_ha_struct* lldd_ha; } ;


 int SISTER_DDB ;
 int asd_ddbsite_read_word (struct asd_ha_struct*,int,int ) ;
 int asd_free_ddb (struct asd_ha_struct*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void asd_dev_gone(struct domain_device *dev)
{
 int ddb, sister_ddb;
 unsigned long flags;
 struct asd_ha_struct *asd_ha = dev->port->ha->lldd_ha;

 spin_lock_irqsave(&asd_ha->hw_prof.ddb_lock, flags);
 ddb = (int) (unsigned long) dev->lldd_dev;
 sister_ddb = asd_ddbsite_read_word(asd_ha, ddb, SISTER_DDB);

 if (sister_ddb != 0xFFFF)
  asd_free_ddb(asd_ha, sister_ddb);
 asd_free_ddb(asd_ha, ddb);
 dev->lldd_dev = ((void*)0);
 spin_unlock_irqrestore(&asd_ha->hw_prof.ddb_lock, flags);
}
