
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int engine; } ;
struct nouveau_engine {int lock; } ;
struct nouveau_engctx {int save; } ;


 struct nouveau_engctx* nv_engctx (struct nouveau_object*) ;
 struct nouveau_engine* nv_engine (int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

void
nouveau_engctx_put(struct nouveau_object *object)
{
 if (object) {
  struct nouveau_engine *engine = nv_engine(object->engine);
  struct nouveau_engctx *engctx = nv_engctx(object);
  spin_unlock_irqrestore(&engine->lock, engctx->save);
 }
}
