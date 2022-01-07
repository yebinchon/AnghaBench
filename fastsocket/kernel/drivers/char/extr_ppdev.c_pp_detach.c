
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int number; } ;


 int MKDEV (int ,int ) ;
 int PP_MAJOR ;
 int device_destroy (int ,int ) ;
 int ppdev_class ;

__attribute__((used)) static void pp_detach(struct parport *port)
{
 device_destroy(ppdev_class, MKDEV(PP_MAJOR, port->number));
}
