
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv04_instobj_priv {int base; int mem; } ;
struct nv04_instmem_priv {int heap; } ;
struct nouveau_object {scalar_t__ engine; } ;


 int nouveau_instobj_destroy (int *) ;
 int nouveau_mm_free (int *,int *) ;

__attribute__((used)) static void
nv04_instobj_dtor(struct nouveau_object *object)
{
 struct nv04_instmem_priv *priv = (void *)object->engine;
 struct nv04_instobj_priv *node = (void *)object;
 nouveau_mm_free(&priv->heap, &node->mem);
 nouveau_instobj_destroy(&node->base);
}
