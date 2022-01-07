
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int thermal_periodic; } ;
struct il_priv {TYPE_1__ _3945; } ;


 int cancel_delayed_work (int *) ;

void
il3945_hw_cancel_deferred_work(struct il_priv *il)
{
 cancel_delayed_work(&il->_3945.thermal_periodic);
}
