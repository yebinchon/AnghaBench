
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_2__ {unsigned long dcache_line_size; unsigned long icache_line_size; } ;


 int BUG_ON (int) ;
 unsigned long PAGE_SIZE ;
 unsigned long __pa (void*) ;
 int flushi (unsigned long) ;
 scalar_t__ hypervisor ;
 TYPE_1__ local_cpu_data () ;
 int preempt_disable () ;
 int preempt_enable () ;
 scalar_t__ spitfire ;
 int spitfire_put_dcache_tag (unsigned long,int) ;
 scalar_t__ tlb_type ;

void flush_ptrace_access(struct vm_area_struct *vma, struct page *page,
    unsigned long uaddr, void *kaddr,
    unsigned long len, int write)
{
 BUG_ON(len > PAGE_SIZE);

 if (tlb_type == hypervisor)
  return;

 preempt_disable();
 if (write && tlb_type == spitfire) {
  unsigned long start = (unsigned long) kaddr;
  unsigned long end = start + len;
  unsigned long icache_line_size;

  icache_line_size = local_cpu_data().icache_line_size;

  for (; start < end; start += icache_line_size)
   flushi(start);
 }

 preempt_enable();
}
