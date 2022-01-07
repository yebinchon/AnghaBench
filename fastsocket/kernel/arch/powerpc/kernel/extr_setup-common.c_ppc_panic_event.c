
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct TYPE_2__ {int (* panic ) (void*) ;} ;


 int NOTIFY_DONE ;
 int crash_fadump (int *,void*) ;
 TYPE_1__ ppc_md ;
 int stub1 (void*) ;

__attribute__((used)) static int ppc_panic_event(struct notifier_block *this,
                             unsigned long event, void *ptr)
{




 crash_fadump(((void*)0), ptr);
 ppc_md.panic(ptr);
 return NOTIFY_DONE;
}
