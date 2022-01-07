
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_fifo_chan {int ramht; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_ramht_remove (int ,int) ;

void
nv50_fifo_object_detach(struct nouveau_object *parent, int cookie)
{
 struct nv50_fifo_chan *chan = (void *)parent;
 nouveau_ramht_remove(chan->ramht, cookie);
}
