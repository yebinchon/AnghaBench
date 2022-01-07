
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int dummy; } ;
struct nouveau_bar {int dummy; } ;


 int nouveau_bar_destroy (struct nouveau_bar*) ;

void
_nouveau_bar_dtor(struct nouveau_object *object)
{
 struct nouveau_bar *bar = (void *)object;
 nouveau_bar_destroy(bar);
}
