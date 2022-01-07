
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int dummy; } ;
struct nouveau_bios {int base; int data; } ;


 int kfree (int ) ;
 int nouveau_subdev_destroy (int *) ;

__attribute__((used)) static void
nouveau_bios_dtor(struct nouveau_object *object)
{
 struct nouveau_bios *bios = (void *)object;
 kfree(bios->data);
 nouveau_subdev_destroy(&bios->base);
}
