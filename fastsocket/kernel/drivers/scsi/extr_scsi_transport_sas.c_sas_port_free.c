
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_port {int dev; } ;


 int put_device (int *) ;
 int transport_destroy_device (int *) ;

void sas_port_free(struct sas_port *port)
{
 transport_destroy_device(&port->dev);
 put_device(&port->dev);
}
