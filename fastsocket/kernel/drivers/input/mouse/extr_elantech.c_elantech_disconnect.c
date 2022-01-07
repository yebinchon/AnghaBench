
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* serio; } ;
struct psmouse {int * private; TYPE_3__ ps2dev; } ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 int elantech_attr_group ;
 int kfree (int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void elantech_disconnect(struct psmouse *psmouse)
{
 sysfs_remove_group(&psmouse->ps2dev.serio->dev.kobj,
      &elantech_attr_group);
 kfree(psmouse->private);
 psmouse->private = ((void*)0);
}
