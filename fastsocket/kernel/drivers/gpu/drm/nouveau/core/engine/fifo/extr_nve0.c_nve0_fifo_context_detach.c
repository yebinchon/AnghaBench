
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nve0_fifo_priv {int dummy; } ;
struct TYPE_2__ {int chid; } ;
struct nve0_fifo_chan {TYPE_1__ base; } ;
struct nve0_fifo_base {int dummy; } ;
struct nouveau_object {scalar_t__ engine; scalar_t__ parent; } ;
struct nouveau_bar {int (* flush ) (struct nouveau_bar*) ;} ;


 int EBUSY ;
 int EINVAL ;







 struct nouveau_bar* nouveau_bar (struct nouveau_object*) ;
 int nouveau_client_name (struct nve0_fifo_chan*) ;
 int nv_engidx (scalar_t__) ;
 int nv_error (struct nve0_fifo_priv*,char*,int ,int ) ;
 int nv_wait (struct nve0_fifo_priv*,int,int,int ) ;
 int nv_wo32 (struct nve0_fifo_base*,int,int) ;
 int nv_wr32 (struct nve0_fifo_priv*,int,int ) ;
 int stub1 (struct nouveau_bar*) ;

__attribute__((used)) static int
nve0_fifo_context_detach(struct nouveau_object *parent, bool suspend,
    struct nouveau_object *object)
{
 struct nouveau_bar *bar = nouveau_bar(parent);
 struct nve0_fifo_priv *priv = (void *)parent->engine;
 struct nve0_fifo_base *base = (void *)parent->parent;
 struct nve0_fifo_chan *chan = (void *)parent;
 u32 addr;

 switch (nv_engidx(object->engine)) {
 case 129 : return 0;
 case 131 :
 case 133:
 case 132: addr = 0x0210; break;
 case 134 : addr = 0x0270; break;
 case 128 : addr = 0x0250; break;
 case 130 : addr = 0x0260; break;
 default:
  return -EINVAL;
 }

 nv_wr32(priv, 0x002634, chan->base.chid);
 if (!nv_wait(priv, 0x002634, 0xffffffff, chan->base.chid)) {
  nv_error(priv, "channel %d [%s] kick timeout\n",
    chan->base.chid, nouveau_client_name(chan));
  if (suspend)
   return -EBUSY;
 }

 nv_wo32(base, addr + 0x00, 0x00000000);
 nv_wo32(base, addr + 0x04, 0x00000000);
 bar->flush(bar);
 return 0;
}
