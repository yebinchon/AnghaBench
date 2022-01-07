
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_udata {int dummy; } ;
struct ib_ucontext {int dummy; } ;
struct ib_device {int dummy; } ;
struct ehca_ucontext {struct ib_ucontext ib_ucontext; } ;


 int ENOMEM ;
 struct ib_ucontext* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int ehca_err (struct ib_device*,char*,struct ib_device*) ;
 struct ehca_ucontext* kzalloc (int,int ) ;

struct ib_ucontext *ehca_alloc_ucontext(struct ib_device *device,
     struct ib_udata *udata)
{
 struct ehca_ucontext *my_context;

 my_context = kzalloc(sizeof *my_context, GFP_KERNEL);
 if (!my_context) {
  ehca_err(device, "Out of memory device=%p", device);
  return ERR_PTR(-ENOMEM);
 }

 return &my_context->ib_ucontext;
}
