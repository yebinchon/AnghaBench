
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct percpu_struct {unsigned long pal_revision; unsigned long* palcode_avail; } ;
struct pcb_struct {int dummy; } ;
struct TYPE_5__ {scalar_t__ processor_offset; } ;
struct TYPE_4__ {int ptbr; int flags; scalar_t__ res2; scalar_t__ res1; scalar_t__ unique; scalar_t__ pcc; scalar_t__ asn; scalar_t__ usp; scalar_t__ ksp; } ;


 TYPE_3__* INIT_HWRPB ;
 int* L1 ;
 int VPTB ;
 int __halt () ;
 scalar_t__ find_pa (unsigned long) ;
 TYPE_1__* pcb_va ;
 int srm_printk (char*,...) ;
 unsigned long switch_to_osf_pal (int,TYPE_1__*,struct pcb_struct*,int ) ;
 int tbia () ;

void
pal_init(void)
{
 unsigned long i, rev;
 struct percpu_struct * percpu;
 struct pcb_struct * pcb_pa;


 pcb_va->ksp = 0;
 pcb_va->usp = 0;
 pcb_va->ptbr = L1[1] >> 32;
 pcb_va->asn = 0;
 pcb_va->pcc = 0;
 pcb_va->unique = 0;
 pcb_va->flags = 1;
 pcb_va->res1 = 0;
 pcb_va->res2 = 0;
 pcb_pa = (struct pcb_struct *)find_pa((unsigned long)pcb_va);
 srm_printk("Switching to OSF PAL-code... ");

 i = switch_to_osf_pal(2, pcb_va, pcb_pa, VPTB);
 if (i) {
  srm_printk("failed, code %ld\n", i);
  __halt();
 }

 percpu = (struct percpu_struct *)
  (INIT_HWRPB->processor_offset + (unsigned long) INIT_HWRPB);
 rev = percpu->pal_revision = percpu->palcode_avail[2];

 srm_printk("OK (rev %lx)\n", rev);

 tbia();
}
