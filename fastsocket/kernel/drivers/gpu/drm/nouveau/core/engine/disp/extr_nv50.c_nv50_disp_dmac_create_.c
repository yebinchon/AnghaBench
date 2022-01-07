
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nv50_disp_dmac {int push; TYPE_1__* pushdma; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_2__ {int limit; int start; int target; } ;


 int EINVAL ;
 int ENOENT ;


 scalar_t__ nouveau_handle_ref (struct nouveau_object*,int ) ;
 int nv50_disp_chan_create_ (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,int,void**) ;
 int nv_mclass (TYPE_1__*) ;

int
nv50_disp_dmac_create_(struct nouveau_object *parent,
         struct nouveau_object *engine,
         struct nouveau_oclass *oclass, u32 pushbuf, int chid,
         int length, void **pobject)
{
 struct nv50_disp_dmac *dmac;
 int ret;

 ret = nv50_disp_chan_create_(parent, engine, oclass, chid,
         length, pobject);
 dmac = *pobject;
 if (ret)
  return ret;

 dmac->pushdma = (void *)nouveau_handle_ref(parent, pushbuf);
 if (!dmac->pushdma)
  return -ENOENT;

 switch (nv_mclass(dmac->pushdma)) {
 case 0x0002:
 case 0x003d:
  if (dmac->pushdma->limit - dmac->pushdma->start != 0xfff)
   return -EINVAL;

  switch (dmac->pushdma->target) {
  case 128:
   dmac->push = 0x00000000 | dmac->pushdma->start >> 8;
   break;
  case 129:
   dmac->push = 0x00000003 | dmac->pushdma->start >> 8;
   break;
  default:
   return -EINVAL;
  }
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
