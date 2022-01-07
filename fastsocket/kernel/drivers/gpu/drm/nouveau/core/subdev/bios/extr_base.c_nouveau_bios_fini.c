
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int dummy; } ;
struct nouveau_bios {int base; } ;


 int nouveau_subdev_fini (int *,int) ;

__attribute__((used)) static int
nouveau_bios_fini(struct nouveau_object *object, bool suspend)
{
 struct nouveau_bios *bios = (void *)object;
 return nouveau_subdev_fini(&bios->base, suspend);
}
