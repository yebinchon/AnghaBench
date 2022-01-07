
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _sas_node {int list; } ;
struct MPT3SAS_ADAPTER {int sas_node_lock; int sas_expander_list; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
_scsih_expander_node_add(struct MPT3SAS_ADAPTER *ioc,
 struct _sas_node *sas_expander)
{
 unsigned long flags;

 spin_lock_irqsave(&ioc->sas_node_lock, flags);
 list_add_tail(&sas_expander->list, &ioc->sas_expander_list);
 spin_unlock_irqrestore(&ioc->sas_node_lock, flags);
}
