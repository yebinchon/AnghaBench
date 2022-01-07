
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcibus_info {int pbi_lock; int pbi_int_ate_resource; } ;


 int alloc_ate_resource (int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pcibr_ate_alloc(struct pcibus_info *pcibus_info, int count)
{
 int status;
 unsigned long flags;

 spin_lock_irqsave(&pcibus_info->pbi_lock, flags);
 status = alloc_ate_resource(&pcibus_info->pbi_int_ate_resource, count);
 spin_unlock_irqrestore(&pcibus_info->pbi_lock, flags);

 return status;
}
