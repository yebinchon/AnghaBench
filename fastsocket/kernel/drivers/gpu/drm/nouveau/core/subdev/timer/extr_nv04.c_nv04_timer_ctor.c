
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int intr; } ;
struct TYPE_3__ {int alarm; int read; TYPE_2__ base; } ;
struct nv04_timer_priv {int lock; int alarms; TYPE_1__ base; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int nouveau_timer_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nv04_timer_priv**) ;
 int nv04_timer_alarm ;
 int nv04_timer_intr ;
 int nv04_timer_read ;
 struct nouveau_object* nv_object (struct nv04_timer_priv*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int
nv04_timer_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
  struct nouveau_oclass *oclass, void *data, u32 size,
  struct nouveau_object **pobject)
{
 struct nv04_timer_priv *priv;
 int ret;

 ret = nouveau_timer_create(parent, engine, oclass, &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 priv->base.base.intr = nv04_timer_intr;
 priv->base.read = nv04_timer_read;
 priv->base.alarm = nv04_timer_alarm;

 INIT_LIST_HEAD(&priv->alarms);
 spin_lock_init(&priv->lock);
 return 0;
}
