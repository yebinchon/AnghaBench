
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_disp_base {int ramht; } ;
struct nouveau_object {scalar_t__ parent; } ;


 int nouveau_ramht_remove (int ,int) ;

__attribute__((used)) static void
nvd0_disp_dmac_object_detach(struct nouveau_object *parent, int cookie)
{
 struct nv50_disp_base *base = (void *)parent->parent;
 nouveau_ramht_remove(base->ramht, cookie);
}
