
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv50_disp_chan {int chid; int base; } ;
struct nv50_disp_base {int chan; } ;
struct TYPE_2__ {scalar_t__ parent; } ;


 int nouveau_namedb_destroy (int *) ;
 TYPE_1__* nv_object (struct nv50_disp_chan*) ;

void
nv50_disp_chan_destroy(struct nv50_disp_chan *chan)
{
 struct nv50_disp_base *base = (void *)nv_object(chan)->parent;
 base->chan &= ~(1 << chan->chid);
 nouveau_namedb_destroy(&chan->base);
}
