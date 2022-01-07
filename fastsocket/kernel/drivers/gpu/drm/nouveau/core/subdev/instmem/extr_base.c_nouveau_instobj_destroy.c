
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_subdev {int mutex; } ;
struct TYPE_2__ {int engine; } ;
struct nouveau_instobj {TYPE_1__ base; int head; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 void nouveau_object_destroy (TYPE_1__*) ;
 struct nouveau_subdev* nv_subdev (int ) ;

void
nouveau_instobj_destroy(struct nouveau_instobj *iobj)
{
 struct nouveau_subdev *subdev = nv_subdev(iobj->base.engine);

 mutex_lock(&subdev->mutex);
 list_del(&iobj->head);
 mutex_unlock(&subdev->mutex);

 return nouveau_object_destroy(&iobj->base);
}
