
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_port {int dev; int phy_list; } ;


 int BUG_ON (int) ;
 int device_add (int *) ;
 int list_empty (int *) ;
 int transport_add_device (int *) ;
 int transport_configure_device (int *) ;

int sas_port_add(struct sas_port *port)
{
 int error;


 BUG_ON(!list_empty(&port->phy_list));

 error = device_add(&port->dev);

 if (error)
  return error;

 transport_add_device(&port->dev);
 transport_configure_device(&port->dev);

 return 0;
}
