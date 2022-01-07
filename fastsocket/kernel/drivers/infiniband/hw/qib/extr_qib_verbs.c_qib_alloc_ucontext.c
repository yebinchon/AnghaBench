
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_ucontext {int dummy; } ;
struct qib_ucontext {struct ib_ucontext ibucontext; } ;
struct ib_udata {int dummy; } ;
struct ib_device {int dummy; } ;


 int ENOMEM ;
 struct ib_ucontext* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct qib_ucontext* kmalloc (int,int ) ;

__attribute__((used)) static struct ib_ucontext *qib_alloc_ucontext(struct ib_device *ibdev,
           struct ib_udata *udata)
{
 struct qib_ucontext *context;
 struct ib_ucontext *ret;

 context = kmalloc(sizeof *context, GFP_KERNEL);
 if (!context) {
  ret = ERR_PTR(-ENOMEM);
  goto bail;
 }

 ret = &context->ibucontext;

bail:
 return ret;
}
