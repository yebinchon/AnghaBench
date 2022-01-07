
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * parent; int * bus; int * type; } ;
struct ctlr_info {TYPE_2__ dev; TYPE_1__* pdev; int devname; } ;
struct TYPE_5__ {int dev; } ;


 int cciss_bus_type ;
 int cciss_host_type ;
 int dev_set_name (TYPE_2__*,char*,int ) ;
 int device_add (TYPE_2__*) ;
 int device_initialize (TYPE_2__*) ;

__attribute__((used)) static int cciss_create_hba_sysfs_entry(struct ctlr_info *h)
{
 device_initialize(&h->dev);
 h->dev.type = &cciss_host_type;
 h->dev.bus = &cciss_bus_type;
 dev_set_name(&h->dev, "%s", h->devname);
 h->dev.parent = &h->pdev->dev;

 return device_add(&h->dev);
}
