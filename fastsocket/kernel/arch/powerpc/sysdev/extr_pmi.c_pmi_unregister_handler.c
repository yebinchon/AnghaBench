
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmi_handler {int node; } ;
struct TYPE_2__ {int handler_spinlock; } ;


 TYPE_1__* data ;
 int list_del (int *) ;
 int pr_debug (char*,struct pmi_handler*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void pmi_unregister_handler(struct pmi_handler *handler)
{
 if (!data)
  return;

 pr_debug("pmi: unregistering handler %p\n", handler);

 spin_lock(&data->handler_spinlock);
 list_del(&handler->node);
 spin_unlock(&data->handler_spinlock);
}
