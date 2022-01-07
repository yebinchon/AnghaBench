
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_disp_base {int base; int ramht; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_parent_destroy (int *) ;
 int nouveau_ramht_ref (int *,int *) ;

__attribute__((used)) static void
nv50_disp_base_dtor(struct nouveau_object *object)
{
 struct nv50_disp_base *base = (void *)object;
 nouveau_ramht_ref(((void*)0), &base->ramht);
 nouveau_parent_destroy(&base->base);
}
