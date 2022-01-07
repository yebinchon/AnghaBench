
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int usecount; } ;


 int atomic_add_return (int,int *) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int nouveau_object_decf (struct nouveau_object*) ;
 int nouveau_object_decs (struct nouveau_object*) ;
 int nv_trace (struct nouveau_object*,char*,int ) ;

int
nouveau_object_dec(struct nouveau_object *object, bool suspend)
{
 int ref = atomic_add_return(-1, &object->usecount);
 int ret;

 nv_trace(object, "use(-1) == %d\n", atomic_read(&object->usecount));

 if (ref == 0) {
  if (suspend)
   ret = nouveau_object_decs(object);
  else
   ret = nouveau_object_decf(object);

  if (ret) {
   atomic_inc(&object->usecount);
   return ret;
  }
 }

 return 0;
}
