
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nve0_fifo_priv {int dummy; } ;
struct nouveau_event {struct nve0_fifo_priv* priv; } ;


 int nv_mask (struct nve0_fifo_priv*,int,int,int) ;

__attribute__((used)) static void
nve0_fifo_uevent_enable(struct nouveau_event *event, int index)
{
 struct nve0_fifo_priv *priv = event->priv;
 nv_mask(priv, 0x002140, 0x80000000, 0x80000000);
}
