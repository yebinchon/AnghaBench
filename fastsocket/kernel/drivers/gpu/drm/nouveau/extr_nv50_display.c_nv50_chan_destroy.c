
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_chan {scalar_t__ handle; } ;
struct nouveau_object {int dummy; } ;


 int EVO_CORE_HANDLE ;
 int NV_CLIENT_CLASS ;
 int nouveau_object_del (struct nouveau_object*,int ,scalar_t__) ;
 struct nouveau_object* nv_pclass (struct nouveau_object*,int ) ;

__attribute__((used)) static void
nv50_chan_destroy(struct nouveau_object *core, struct nv50_chan *chan)
{
 struct nouveau_object *client = nv_pclass(core, NV_CLIENT_CLASS);
 if (chan->handle)
  nouveau_object_del(client, EVO_CORE_HANDLE, chan->handle);
}
