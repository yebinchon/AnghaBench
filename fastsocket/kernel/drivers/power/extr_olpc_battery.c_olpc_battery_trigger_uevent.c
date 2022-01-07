
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* dev; } ;
struct TYPE_7__ {TYPE_2__* dev; } ;
struct TYPE_6__ {int kobj; } ;
struct TYPE_5__ {int kobj; } ;


 unsigned long EC_SCI_SRC_ACPWR ;
 unsigned long EC_SCI_SRC_BATERR ;
 unsigned long EC_SCI_SRC_BATSOC ;
 unsigned long EC_SCI_SRC_BATTERY ;
 int KOBJ_CHANGE ;
 int kobject_uevent (int *,int ) ;
 TYPE_4__ olpc_ac ;
 TYPE_3__ olpc_bat ;

void olpc_battery_trigger_uevent(unsigned long cause)
{
 if (cause & EC_SCI_SRC_ACPWR)
  kobject_uevent(&olpc_ac.dev->kobj, KOBJ_CHANGE);
 if (cause & (EC_SCI_SRC_BATERR|EC_SCI_SRC_BATSOC|EC_SCI_SRC_BATTERY))
  kobject_uevent(&olpc_bat.dev->kobj, KOBJ_CHANGE);
}
