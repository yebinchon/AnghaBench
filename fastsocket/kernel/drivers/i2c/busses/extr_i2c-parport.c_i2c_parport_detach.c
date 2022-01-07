
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct parport {int dummy; } ;
struct i2c_par {struct i2c_par* next; TYPE_1__* pdev; int adapter; } ;
struct TYPE_6__ {scalar_t__ val; } ;
struct TYPE_7__ {TYPE_3__ init; } ;
struct TYPE_5__ {struct parport* port; } ;


 struct i2c_par* adapter_list ;
 TYPE_4__* adapter_parm ;
 int i2c_del_adapter (int *) ;
 int kfree (struct i2c_par*) ;
 int line_set (struct parport*,int ,TYPE_3__*) ;
 int parport_release (TYPE_1__*) ;
 int parport_unregister_device (TYPE_1__*) ;
 size_t type ;

__attribute__((used)) static void i2c_parport_detach (struct parport *port)
{
 struct i2c_par *adapter, *prev;


 for (prev = ((void*)0), adapter = adapter_list; adapter;
      prev = adapter, adapter = adapter->next) {
  if (adapter->pdev->port == port) {
   i2c_del_adapter(&adapter->adapter);


   if (adapter_parm[type].init.val)
    line_set(port, 0, &adapter_parm[type].init);

   parport_release(adapter->pdev);
   parport_unregister_device(adapter->pdev);
   if (prev)
    prev->next = adapter->next;
   else
    adapter_list = adapter->next;
   kfree(adapter);
   return;
  }
 }
}
