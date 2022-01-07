
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmi_handler {int node; } ;
struct TYPE_2__ {int handler_spinlock; int handler; } ;


 int ENODEV ;
 TYPE_1__* data ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int pmi_register_handler(struct pmi_handler *handler)
{
 if (!data)
  return -ENODEV;

 spin_lock(&data->handler_spinlock);
 list_add_tail(&handler->node, &data->handler);
 spin_unlock(&data->handler_spinlock);

 return 0;
}
