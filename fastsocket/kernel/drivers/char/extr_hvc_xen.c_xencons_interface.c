
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xencons_interface {int dummy; } ;
struct TYPE_4__ {int mfn; } ;
struct TYPE_5__ {TYPE_1__ domU; } ;
struct TYPE_6__ {TYPE_2__ console; } ;


 unsigned long PAGE_SHIFT ;
 struct xencons_interface* __va (unsigned long) ;
 unsigned long console_pfn ;
 struct xencons_interface* mfn_to_virt (int ) ;
 TYPE_3__* xen_start_info ;

__attribute__((used)) static inline struct xencons_interface *xencons_interface(void)
{
 if (console_pfn == ~0ul)
  return mfn_to_virt(xen_start_info->console.domU.mfn);
 else
  return __va(console_pfn << PAGE_SHIFT);
}
