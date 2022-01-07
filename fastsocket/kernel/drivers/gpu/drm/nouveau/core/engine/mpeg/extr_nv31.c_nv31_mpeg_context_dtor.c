
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv31_mpeg_priv {int refcount; } ;
struct nv31_mpeg_chan {int base; } ;
struct nouveau_object {scalar_t__ engine; } ;


 int atomic_dec (int *) ;
 int nouveau_object_destroy (int *) ;

__attribute__((used)) static void
nv31_mpeg_context_dtor(struct nouveau_object *object)
{
 struct nv31_mpeg_priv *priv = (void *)object->engine;
 struct nv31_mpeg_chan *chan = (void *)object;
 atomic_dec(&priv->refcount);
 nouveau_object_destroy(&chan->base);
}
