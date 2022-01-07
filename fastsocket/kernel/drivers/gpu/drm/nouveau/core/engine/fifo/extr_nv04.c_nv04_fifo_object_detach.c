
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv04_fifo_priv {int ramht; } ;
struct nouveau_object {scalar_t__ engine; } ;
struct TYPE_2__ {int mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nouveau_ramht_remove (int ,int) ;
 TYPE_1__* nv_subdev (struct nv04_fifo_priv*) ;

void
nv04_fifo_object_detach(struct nouveau_object *parent, int cookie)
{
 struct nv04_fifo_priv *priv = (void *)parent->engine;
 mutex_lock(&nv_subdev(priv)->mutex);
 nouveau_ramht_remove(priv->ramht, cookie);
 mutex_unlock(&nv_subdev(priv)->mutex);
}
