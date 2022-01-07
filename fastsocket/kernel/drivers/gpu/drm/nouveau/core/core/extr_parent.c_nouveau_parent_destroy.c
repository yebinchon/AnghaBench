
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_sclass {struct nouveau_sclass* sclass; } ;
struct nouveau_parent {int base; struct nouveau_sclass* sclass; } ;


 int kfree (struct nouveau_sclass*) ;
 int nouveau_object_destroy (int *) ;

void
nouveau_parent_destroy(struct nouveau_parent *parent)
{
 struct nouveau_sclass *sclass;

 while ((sclass = parent->sclass)) {
  parent->sclass = sclass->sclass;
  kfree(sclass);
 }

 nouveau_object_destroy(&parent->base);
}
