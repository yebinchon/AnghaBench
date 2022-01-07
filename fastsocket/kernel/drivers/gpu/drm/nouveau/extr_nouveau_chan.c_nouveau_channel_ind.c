
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct nve0_channel_ind_class {int ilength; int engine; scalar_t__ ioffset; int pushbuf; } ;
struct nouveau_drm {int dummy; } ;
struct nouveau_cli {int dummy; } ;
struct TYPE_3__ {scalar_t__ offset; } ;
struct TYPE_4__ {TYPE_1__ vma; int handle; } ;
struct nouveau_channel {int object; TYPE_2__ push; } ;
typedef int args ;






 int nouveau_channel_del (struct nouveau_channel**) ;
 int nouveau_channel_prep (struct nouveau_drm*,struct nouveau_cli*,int ,int ,int,struct nouveau_channel**) ;
 int nouveau_object_new (int ,int ,int ,int ,struct nve0_channel_ind_class*,int,int *) ;
 int nv_object (struct nouveau_cli*) ;

__attribute__((used)) static int
nouveau_channel_ind(struct nouveau_drm *drm, struct nouveau_cli *cli,
      u32 parent, u32 handle, u32 engine,
      struct nouveau_channel **pchan)
{
 static const u16 oclasses[] = { 128,
     129,
     130,
     131,
     0 };
 const u16 *oclass = oclasses;
 struct nve0_channel_ind_class args;
 struct nouveau_channel *chan;
 int ret;


 ret = nouveau_channel_prep(drm, cli, parent, handle, 0x12000, &chan);
 *pchan = chan;
 if (ret)
  return ret;


 args.pushbuf = chan->push.handle;
 args.ioffset = 0x10000 + chan->push.vma.offset;
 args.ilength = 0x02000;
 args.engine = engine;

 do {
  ret = nouveau_object_new(nv_object(cli), parent, handle,
      *oclass++, &args, sizeof(args),
      &chan->object);
  if (ret == 0)
   return ret;
 } while (*oclass);

 nouveau_channel_del(pchan);
 return ret;
}
