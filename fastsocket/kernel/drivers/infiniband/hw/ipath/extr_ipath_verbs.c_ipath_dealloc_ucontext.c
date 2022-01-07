
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_ucontext {int dummy; } ;


 int kfree (int ) ;
 int to_iucontext (struct ib_ucontext*) ;

__attribute__((used)) static int ipath_dealloc_ucontext(struct ib_ucontext *context)
{
 kfree(to_iucontext(context));
 return 0;
}
