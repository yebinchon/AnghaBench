
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int maddr; } ;
typedef TYPE_1__ xmaddr_t ;
typedef int u64 ;
struct desc_struct {int dummy; } ;


 int BUG () ;
 scalar_t__ HYPERVISOR_update_descriptor (int ,int ) ;
 TYPE_1__ arbitrary_virt_to_machine (struct desc_struct*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int xen_mc_flush () ;

__attribute__((used)) static void xen_write_ldt_entry(struct desc_struct *dt, int entrynum,
    const void *ptr)
{
 xmaddr_t mach_lp = arbitrary_virt_to_machine(&dt[entrynum]);
 u64 entry = *(u64 *)ptr;

 preempt_disable();

 xen_mc_flush();
 if (HYPERVISOR_update_descriptor(mach_lp.maddr, entry))
  BUG();

 preempt_enable();
}
