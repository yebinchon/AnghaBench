
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv84_fifo_priv {int dummy; } ;
struct nouveau_event {struct nv84_fifo_priv* priv; } ;


 int nv_mask (struct nv84_fifo_priv*,int,int,int) ;

__attribute__((used)) static void
nv84_fifo_uevent_disable(struct nouveau_event *event, int index)
{
 struct nv84_fifo_priv *priv = event->priv;
 nv_mask(priv, 0x002140, 0x40000000, 0x00000000);
}
