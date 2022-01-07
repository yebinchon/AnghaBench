
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nv31_mpeg_priv {int refcount; } ;
struct nv31_mpeg_chan {int dummy; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;


 int EBUSY ;
 int atomic_add_unless (int *,int,int) ;
 int nouveau_object_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int ,struct nv31_mpeg_chan**) ;
 struct nouveau_object* nv_object (struct nv31_mpeg_chan*) ;

__attribute__((used)) static int
nv31_mpeg_context_ctor(struct nouveau_object *parent,
         struct nouveau_object *engine,
         struct nouveau_oclass *oclass, void *data, u32 size,
         struct nouveau_object **pobject)
{
 struct nv31_mpeg_priv *priv = (void *)engine;
 struct nv31_mpeg_chan *chan;
 int ret;

 if (!atomic_add_unless(&priv->refcount, 1, 1))
  return -EBUSY;

 ret = nouveau_object_create(parent, engine, oclass, 0, &chan);
 *pobject = nv_object(chan);
 if (ret)
  return ret;

 return 0;
}
