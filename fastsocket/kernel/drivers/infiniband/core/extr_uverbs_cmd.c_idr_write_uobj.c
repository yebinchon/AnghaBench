
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int dummy; } ;
struct ib_uobject {int live; int mutex; } ;
struct ib_ucontext {int dummy; } ;


 struct ib_uobject* __idr_get_uobj (struct idr*,int,struct ib_ucontext*) ;
 int down_write (int *) ;
 int put_uobj_write (struct ib_uobject*) ;

__attribute__((used)) static struct ib_uobject *idr_write_uobj(struct idr *idr, int id,
      struct ib_ucontext *context)
{
 struct ib_uobject *uobj;

 uobj = __idr_get_uobj(idr, id, context);
 if (!uobj)
  return ((void*)0);

 down_write(&uobj->mutex);
 if (!uobj->live) {
  put_uobj_write(uobj);
  return ((void*)0);
 }

 return uobj;
}
