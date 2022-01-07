
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int maddr; } ;
typedef TYPE_1__ xmaddr_t ;
struct thread_struct {int * tls_array; } ;
struct multicall_space {int mc; } ;
struct desc_struct {int dummy; } ;


 unsigned int GDT_ENTRY_TLS_MIN ;
 int MULTI_update_descriptor (int ,int ,int ) ;
 struct multicall_space __xen_mc_entry (int ) ;
 TYPE_1__ arbitrary_virt_to_machine (struct desc_struct*) ;
 struct desc_struct* get_cpu_gdt_table (unsigned int) ;

__attribute__((used)) static void load_TLS_descriptor(struct thread_struct *t,
    unsigned int cpu, unsigned int i)
{
 struct desc_struct *gdt = get_cpu_gdt_table(cpu);
 xmaddr_t maddr = arbitrary_virt_to_machine(&gdt[GDT_ENTRY_TLS_MIN+i]);
 struct multicall_space mc = __xen_mc_entry(0);

 MULTI_update_descriptor(mc.mc, maddr.maddr, t->tls_array[i]);
}
