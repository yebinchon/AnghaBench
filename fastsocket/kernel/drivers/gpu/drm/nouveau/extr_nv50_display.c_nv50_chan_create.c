
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nv50_chan {int handle; int user; } ;
struct nouveau_object {int dummy; } ;


 int EVO_CHAN_HANDLE (int ,int ) ;
 int EVO_CHAN_OCLASS (int ,struct nouveau_object*) ;
 int EVO_CORE_HANDLE ;
 int NV_CLIENT_CLASS ;
 int nouveau_object_new (struct nouveau_object*,int ,int const,int const,void*,int ,int *) ;
 struct nouveau_object* nv_pclass (struct nouveau_object*,int ) ;

__attribute__((used)) static int
nv50_chan_create(struct nouveau_object *core, u32 bclass, u8 head,
   void *data, u32 size, struct nv50_chan *chan)
{
 struct nouveau_object *client = nv_pclass(core, NV_CLIENT_CLASS);
 const u32 oclass = EVO_CHAN_OCLASS(bclass, core);
 const u32 handle = EVO_CHAN_HANDLE(bclass, head);
 int ret;

 ret = nouveau_object_new(client, EVO_CORE_HANDLE, handle,
     oclass, data, size, &chan->user);
 if (ret)
  return ret;

 chan->handle = handle;
 return 0;
}
