
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdrom_device_info {int name; TYPE_1__* ops; int (* exit ) (struct cdrom_device_info*) ;int list; } ;
struct TYPE_2__ {int n_minors; } ;


 int CD_OPEN ;
 int CD_REG_UNREG ;
 int cdinfo (int ,char*,...) ;
 int cdrom_mutex ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct cdrom_device_info*) ;

void unregister_cdrom(struct cdrom_device_info *cdi)
{
 cdinfo(CD_OPEN, "entering unregister_cdrom\n");

 mutex_lock(&cdrom_mutex);
 list_del(&cdi->list);
 mutex_unlock(&cdrom_mutex);

 if (cdi->exit)
  cdi->exit(cdi);

 cdi->ops->n_minors--;
 cdinfo(CD_REG_UNREG, "drive \"/dev/%s\" unregistered\n", cdi->name);
}
