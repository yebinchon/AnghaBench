
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int refcount; } ;


 int atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int nouveau_object_dtor (struct nouveau_object*) ;
 int nv_trace (struct nouveau_object*,char*,int ) ;

void
nouveau_object_ref(struct nouveau_object *obj, struct nouveau_object **ref)
{
 if (obj) {
  atomic_inc(&obj->refcount);
  nv_trace(obj, "inc() == %d\n", atomic_read(&obj->refcount));
 }

 if (*ref) {
  int dead = atomic_dec_and_test(&(*ref)->refcount);
  nv_trace(*ref, "dec() == %d\n", atomic_read(&(*ref)->refcount));
  if (dead)
   nouveau_object_dtor(*ref);
 }

 *ref = obj;
}
