
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pmf_function {int ref; TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* handlers; } ;
struct TYPE_3__ {int owner; } ;


 int kref_get (int *) ;
 int try_module_get (int ) ;

struct pmf_function *pmf_get_function(struct pmf_function *func)
{
 if (!try_module_get(func->dev->handlers->owner))
  return ((void*)0);
 kref_get(&func->ref);
 return func;
}
