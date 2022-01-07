
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_context {scalar_t__ ioprio_changed; } ;


 int call_for_each_cic (struct io_context*,int ) ;
 int changed_ioprio ;

__attribute__((used)) static void cfq_ioc_set_ioprio(struct io_context *ioc)
{
 call_for_each_cic(ioc, changed_ioprio);
 ioc->ioprio_changed = 0;
}
