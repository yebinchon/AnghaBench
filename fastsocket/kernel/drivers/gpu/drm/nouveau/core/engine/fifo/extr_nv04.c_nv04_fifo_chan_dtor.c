
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ramfc_desc {scalar_t__ ctxp; scalar_t__ bits; } ;
struct nv04_fifo_priv {int ramfc; struct ramfc_desc* ramfc_desc; } ;
struct nv04_fifo_chan {int base; scalar_t__ ramfc; } ;
struct nouveau_object {scalar_t__ engine; } ;


 int nouveau_fifo_channel_destroy (int *) ;
 int nv_wo32 (int ,scalar_t__,int) ;

void
nv04_fifo_chan_dtor(struct nouveau_object *object)
{
 struct nv04_fifo_priv *priv = (void *)object->engine;
 struct nv04_fifo_chan *chan = (void *)object;
 struct ramfc_desc *c = priv->ramfc_desc;

 do {
  nv_wo32(priv->ramfc, chan->ramfc + c->ctxp, 0x00000000);
 } while ((++c)->bits);

 nouveau_fifo_channel_destroy(&chan->base);
}
