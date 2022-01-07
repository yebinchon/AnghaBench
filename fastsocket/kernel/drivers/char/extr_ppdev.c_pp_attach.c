
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int number; int dev; } ;


 int MKDEV (int ,int ) ;
 int PP_MAJOR ;
 int device_create (int ,int ,int ,int *,char*,int ) ;
 int ppdev_class ;

__attribute__((used)) static void pp_attach(struct parport *port)
{
 device_create(ppdev_class, port->dev, MKDEV(PP_MAJOR, port->number),
        ((void*)0), "parport%d", port->number);
}
