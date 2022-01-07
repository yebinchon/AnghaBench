
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_ucontext {int dummy; } ;
struct ib_pd {int dummy; } ;


 int ib_uverbs_pd_idr ;
 struct ib_pd* idr_read_obj (int *,int,struct ib_ucontext*,int ) ;

__attribute__((used)) static struct ib_pd *idr_read_pd(int pd_handle, struct ib_ucontext *context)
{
 return idr_read_obj(&ib_uverbs_pd_idr, pd_handle, context, 0);
}
