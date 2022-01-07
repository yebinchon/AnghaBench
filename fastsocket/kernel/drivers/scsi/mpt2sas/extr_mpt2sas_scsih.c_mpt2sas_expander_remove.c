
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct _sas_node {int list; } ;
struct MPT2SAS_ADAPTER {int sas_node_lock; scalar_t__ shost_recovery; } ;


 int _scsih_expander_node_remove (struct MPT2SAS_ADAPTER*,struct _sas_node*) ;
 int list_del (int *) ;
 struct _sas_node* mpt2sas_scsih_expander_find_by_sas_address (struct MPT2SAS_ADAPTER*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
mpt2sas_expander_remove(struct MPT2SAS_ADAPTER *ioc, u64 sas_address)
{
 struct _sas_node *sas_expander;
 unsigned long flags;

 if (ioc->shost_recovery)
  return;

 spin_lock_irqsave(&ioc->sas_node_lock, flags);
 sas_expander = mpt2sas_scsih_expander_find_by_sas_address(ioc,
     sas_address);
 if (sas_expander)
  list_del(&sas_expander->list);
 spin_unlock_irqrestore(&ioc->sas_node_lock, flags);
 if (sas_expander)
  _scsih_expander_node_remove(ioc, sas_expander);
}
