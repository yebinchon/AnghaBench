
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int dummy; } ;
struct ib_uobject {int live; int mutex; } ;
struct ib_ucontext {int dummy; } ;


 int SINGLE_DEPTH_NESTING ;
 struct ib_uobject* __idr_get_uobj (struct idr*,int,struct ib_ucontext*) ;
 int down_read (int *) ;
 int down_read_nested (int *,int ) ;
 int put_uobj_read (struct ib_uobject*) ;

__attribute__((used)) static struct ib_uobject *idr_read_uobj(struct idr *idr, int id,
     struct ib_ucontext *context, int nested)
{
 struct ib_uobject *uobj;

 uobj = __idr_get_uobj(idr, id, context);
 if (!uobj)
  return ((void*)0);

 if (nested)
  down_read_nested(&uobj->mutex, SINGLE_DEPTH_NESTING);
 else
  down_read(&uobj->mutex);
 if (!uobj->live) {
  put_uobj_read(uobj);
  return ((void*)0);
 }

 return uobj;
}
