
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_fifo {int base; int uevent; int channel; } ;


 int kfree (int ) ;
 int nouveau_engine_destroy (int *) ;
 int nouveau_event_destroy (int *) ;

void
nouveau_fifo_destroy(struct nouveau_fifo *priv)
{
 kfree(priv->channel);
 nouveau_event_destroy(&priv->uevent);
 nouveau_engine_destroy(&priv->base);
}
