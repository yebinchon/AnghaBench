
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_instmem_priv {unsigned long long addr; int base; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_instmem_fini (int *,int) ;

__attribute__((used)) static int
nv50_instmem_fini(struct nouveau_object *object, bool suspend)
{
 struct nv50_instmem_priv *priv = (void *)object;
 priv->addr = ~0ULL;
 return nouveau_instmem_fini(&priv->base, suspend);
}
