
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pmf_irq_client {int link; struct pmf_function* func; } ;
struct pmf_function {TYPE_2__* dev; int irq_clients; } ;
struct TYPE_4__ {TYPE_1__* handlers; } ;
struct TYPE_3__ {int (* irq_disable ) (struct pmf_function*) ;} ;


 int BUG_ON (int ) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pmf_irq_mutex ;
 int pmf_lock ;
 int pmf_put_function (struct pmf_function*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct pmf_function*) ;

void pmf_unregister_irq_client(struct pmf_irq_client *client)
{
 struct pmf_function *func = client->func;
 unsigned long flags;

 BUG_ON(func == ((void*)0));


 mutex_lock(&pmf_irq_mutex);
 client->func = ((void*)0);


 spin_lock_irqsave(&pmf_lock, flags);
 list_del(&client->link);
 spin_unlock_irqrestore(&pmf_lock, flags);

 if (list_empty(&func->irq_clients))
  func->dev->handlers->irq_disable(func);
 mutex_unlock(&pmf_irq_mutex);
 pmf_put_function(func);
}
