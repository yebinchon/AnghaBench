
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int dummy; } ;
struct nouveau_gpio {int base; int events; } ;


 int nouveau_event_destroy (int *) ;
 int nouveau_subdev_destroy (int *) ;

void
_nouveau_gpio_dtor(struct nouveau_object *object)
{
 struct nouveau_gpio *gpio = (void *)object;
 nouveau_event_destroy(&gpio->events);
 nouveau_subdev_destroy(&gpio->base);
}
