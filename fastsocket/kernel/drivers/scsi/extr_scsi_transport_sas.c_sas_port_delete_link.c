
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; } ;
struct sas_port {TYPE_1__ dev; } ;
struct TYPE_4__ {int kobj; } ;
struct sas_phy {TYPE_2__ dev; } ;


 char* dev_name (TYPE_2__*) ;
 int sysfs_remove_link (int *,char*) ;

__attribute__((used)) static void sas_port_delete_link(struct sas_port *port,
     struct sas_phy *phy)
{
 sysfs_remove_link(&port->dev.kobj, dev_name(&phy->dev));
 sysfs_remove_link(&phy->dev.kobj, "port");
}
