
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int dummy; } ;
struct ib_uobject {int ref; struct ib_ucontext* context; } ;
struct ib_ucontext {int dummy; } ;


 int ib_uverbs_idr_lock ;
 struct ib_uobject* idr_find (struct idr*,int) ;
 int kref_get (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct ib_uobject *__idr_get_uobj(struct idr *idr, int id,
      struct ib_ucontext *context)
{
 struct ib_uobject *uobj;

 spin_lock(&ib_uverbs_idr_lock);
 uobj = idr_find(idr, id);
 if (uobj) {
  if (uobj->context == context)
   kref_get(&uobj->ref);
  else
   uobj = ((void*)0);
 }
 spin_unlock(&ib_uverbs_idr_lock);

 return uobj;
}
