
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_gpio {int get; int set; int find; int events; } ;


 int nouveau_event_create (int,int *) ;
 int nouveau_gpio_find ;
 int nouveau_gpio_get ;
 int nouveau_gpio_set ;
 int nouveau_subdev_create_ (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int ,char*,char*,int,void**) ;

int
nouveau_gpio_create_(struct nouveau_object *parent,
       struct nouveau_object *engine,
       struct nouveau_oclass *oclass, int lines,
       int length, void **pobject)
{
 struct nouveau_gpio *gpio;
 int ret;

 ret = nouveau_subdev_create_(parent, engine, oclass, 0, "GPIO", "gpio",
         length, pobject);
 gpio = *pobject;
 if (ret)
  return ret;

 ret = nouveau_event_create(lines, &gpio->events);
 if (ret)
  return ret;

 gpio->find = nouveau_gpio_find;
 gpio->set = nouveau_gpio_set;
 gpio->get = nouveau_gpio_get;
 return 0;
}
