
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int size; int addr; } ;
struct nv04_instobj_priv {TYPE_2__* mem; TYPE_1__ base; } ;
struct nv04_instmem_priv {int heap; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_4__ {int length; int offset; } ;


 int nouveau_instobj_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nv04_instobj_priv**) ;
 int nouveau_mm_head (int *,int,int ,int ,int,TYPE_2__**) ;
 struct nouveau_object* nv_object (struct nv04_instobj_priv*) ;

__attribute__((used)) static int
nv04_instobj_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
    struct nouveau_oclass *oclass, void *data, u32 size,
    struct nouveau_object **pobject)
{
 struct nv04_instmem_priv *priv = (void *)engine;
 struct nv04_instobj_priv *node;
 int ret, align;

 align = (unsigned long)data;
 if (!align)
  align = 1;

 ret = nouveau_instobj_create(parent, engine, oclass, &node);
 *pobject = nv_object(node);
 if (ret)
  return ret;

 ret = nouveau_mm_head(&priv->heap, 1, size, size, align, &node->mem);
 if (ret)
  return ret;

 node->base.addr = node->mem->offset;
 node->base.size = node->mem->length;
 return 0;
}
