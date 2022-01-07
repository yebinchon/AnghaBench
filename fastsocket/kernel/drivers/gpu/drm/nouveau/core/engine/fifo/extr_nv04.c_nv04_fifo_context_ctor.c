
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nv04_fifo_base {int dummy; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;


 int NVOBJ_FLAG_HEAP ;
 int nouveau_fifo_context_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int *,int,int,int ,struct nv04_fifo_base**) ;
 struct nouveau_object* nv_object (struct nv04_fifo_base*) ;

int
nv04_fifo_context_ctor(struct nouveau_object *parent,
         struct nouveau_object *engine,
         struct nouveau_oclass *oclass, void *data, u32 size,
         struct nouveau_object **pobject)
{
 struct nv04_fifo_base *base;
 int ret;

 ret = nouveau_fifo_context_create(parent, engine, oclass, ((void*)0), 0x1000,
              0x1000, NVOBJ_FLAG_HEAP, &base);
 *pobject = nv_object(base);
 if (ret)
  return ret;

 return 0;
}
