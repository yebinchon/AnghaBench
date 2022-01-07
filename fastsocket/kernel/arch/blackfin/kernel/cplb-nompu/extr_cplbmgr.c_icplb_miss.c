
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long eaddr; unsigned long data; } ;


 int CPLB_NO_ADDR_MATCH ;
 int CPLB_RELOADED ;
 int FAULT_USERSUPV ;
 unsigned long PAGE_SIZE_1MB ;
 unsigned long PAGE_SIZE_4MB ;
 int SIZE_1M ;
 int SIZE_4M ;
 unsigned long bfin_read_ICPLB_FAULT_ADDR () ;
 int bfin_read_ICPLB_STATUS () ;
 int evict_one_icplb (int) ;
 TYPE_1__* icplb_bounds ;
 int icplb_nr_bounds ;
 int * nr_icplb_miss ;
 int * nr_icplb_supv_miss ;
 scalar_t__ unlikely (int) ;
 int write_icplb_data (int,int,unsigned long,unsigned long) ;

__attribute__((used)) static int icplb_miss(int cpu)
{
 unsigned long addr = bfin_read_ICPLB_FAULT_ADDR();
 int status = bfin_read_ICPLB_STATUS();
 int idx;
 unsigned long i_data, base, addr1, eaddr;

 nr_icplb_miss[cpu]++;
 if (unlikely(status & FAULT_USERSUPV))
  nr_icplb_supv_miss[cpu]++;

 base = 0;
 idx = 0;
 do {
  eaddr = icplb_bounds[idx].eaddr;
  if (addr < eaddr)
   break;
  base = eaddr;
 } while (++idx < icplb_nr_bounds);

 if (unlikely(idx == icplb_nr_bounds))
  return CPLB_NO_ADDR_MATCH;

 i_data = icplb_bounds[idx].data;
 if (unlikely(i_data == 0))
  return CPLB_NO_ADDR_MATCH;

 addr1 = addr & ~(SIZE_4M - 1);
 addr &= ~(SIZE_1M - 1);
 i_data |= PAGE_SIZE_1MB;
 if (addr1 >= base && (addr1 + SIZE_4M) <= eaddr) {




  i_data |= PAGE_SIZE_4MB;
  addr = addr1;
 }


 idx = evict_one_icplb(cpu);

 write_icplb_data(cpu, idx, i_data, addr);

 return CPLB_RELOADED;
}
