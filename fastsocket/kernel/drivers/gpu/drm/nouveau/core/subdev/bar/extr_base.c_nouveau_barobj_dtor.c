
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_object {scalar_t__ engine; } ;
struct TYPE_2__ {scalar_t__ node; } ;
struct nouveau_barobj {int base; TYPE_1__ vma; } ;
struct nouveau_bar {int (* unmap ) (struct nouveau_bar*,TYPE_1__*) ;} ;


 int nouveau_object_destroy (int *) ;
 int stub1 (struct nouveau_bar*,TYPE_1__*) ;

__attribute__((used)) static void
nouveau_barobj_dtor(struct nouveau_object *object)
{
 struct nouveau_bar *bar = (void *)object->engine;
 struct nouveau_barobj *barobj = (void *)object;
 if (barobj->vma.node)
  bar->unmap(bar, &barobj->vma);
 nouveau_object_destroy(&barobj->base);
}
