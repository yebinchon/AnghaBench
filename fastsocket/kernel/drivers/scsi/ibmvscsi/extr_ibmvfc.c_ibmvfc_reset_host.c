
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibmvfc_host {TYPE_1__* host; } ;
struct TYPE_2__ {int host_lock; } ;


 int __ibmvfc_reset_host (struct ibmvfc_host*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void ibmvfc_reset_host(struct ibmvfc_host *vhost)
{
 unsigned long flags;

 spin_lock_irqsave(vhost->host->host_lock, flags);
 __ibmvfc_reset_host(vhost);
 spin_unlock_irqrestore(vhost->host->host_lock, flags);
}
