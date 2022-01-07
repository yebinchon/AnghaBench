
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_driver {int drv; int * probe; } ;


 int driver_attr_new_id ;
 int driver_create_file (int *,int *) ;

__attribute__((used)) static int
pcmcia_create_newid_file(struct pcmcia_driver *drv)
{
 int error = 0;
 if (drv->probe != ((void*)0))
  error = driver_create_file(&drv->drv, &driver_attr_new_id);
 return error;
}
