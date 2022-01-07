
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibmvfc_host {TYPE_1__* host; } ;
struct TYPE_2__ {int host_lock; } ;


 int __ibmvfc_work_to_do (struct ibmvfc_host*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int ibmvfc_work_to_do(struct ibmvfc_host *vhost)
{
 unsigned long flags;
 int rc;

 spin_lock_irqsave(vhost->host->host_lock, flags);
 rc = __ibmvfc_work_to_do(vhost);
 spin_unlock_irqrestore(vhost->host->host_lock, flags);
 return rc;
}
