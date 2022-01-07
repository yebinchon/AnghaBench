
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int (* flip ) (int ) ;int flip_data; } ;
struct nvc0_software_chan {TYPE_1__ base; } ;
struct nouveau_object {int parent; } ;


 int EINVAL ;
 scalar_t__ nv_engctx (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static int
nvc0_software_mthd_flip(struct nouveau_object *object, u32 mthd,
   void *args, u32 size)
{
 struct nvc0_software_chan *chan = (void *)nv_engctx(object->parent);
 if (chan->base.flip)
  return chan->base.flip(chan->base.flip_data);
 return -EINVAL;
}
