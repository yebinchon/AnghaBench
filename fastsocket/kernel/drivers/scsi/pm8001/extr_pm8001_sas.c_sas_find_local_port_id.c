
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct domain_device {struct domain_device* parent; TYPE_1__* port; } ;
struct TYPE_2__ {int id; } ;



__attribute__((used)) static int sas_find_local_port_id(struct domain_device *dev)
{
 struct domain_device *pdev = dev->parent;


 if (!pdev)
  return dev->port->id;
 while (pdev) {
  struct domain_device *pdev_p = pdev->parent;
  if (!pdev_p)
   return pdev->port->id;
  pdev = pdev->parent;
 }
 return 0;
}
