
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_port {int phy_list; } ;
struct device {int parent; } ;


 int BUG_ON (int) ;
 struct sas_port* dev_to_sas_port (struct device*) ;
 int kfree (struct sas_port*) ;
 int list_empty (int *) ;
 int put_device (int ) ;

__attribute__((used)) static void sas_port_release(struct device *dev)
{
 struct sas_port *port = dev_to_sas_port(dev);

 BUG_ON(!list_empty(&port->phy_list));

 put_device(dev->parent);
 kfree(port);
}
