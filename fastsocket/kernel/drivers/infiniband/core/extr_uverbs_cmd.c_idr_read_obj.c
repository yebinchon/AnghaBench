
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int dummy; } ;
struct ib_uobject {void* object; } ;
struct ib_ucontext {int dummy; } ;


 struct ib_uobject* idr_read_uobj (struct idr*,int,struct ib_ucontext*,int) ;

__attribute__((used)) static void *idr_read_obj(struct idr *idr, int id, struct ib_ucontext *context,
     int nested)
{
 struct ib_uobject *uobj;

 uobj = idr_read_uobj(idr, id, context, nested);
 return uobj ? uobj->object : ((void*)0);
}
