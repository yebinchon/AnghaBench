
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
 unsigned long bfin_read_DCPLB_FAULT_ADDR () ;
 int bfin_read_DCPLB_STATUS () ;
 TYPE_1__* dcplb_bounds ;
 int dcplb_nr_bounds ;
 int evict_one_dcplb (int) ;
 int * nr_dcplb_miss ;
 int * nr_dcplb_supv_miss ;
 scalar_t__ unlikely (int) ;
 int write_dcplb_data (int,int,unsigned long,unsigned long) ;

__attribute__((used)) static int dcplb_miss(int cpu)
{
 unsigned long addr = bfin_read_DCPLB_FAULT_ADDR();
 int status = bfin_read_DCPLB_STATUS();
 int idx;
 unsigned long d_data, base, addr1, eaddr;

 nr_dcplb_miss[cpu]++;
 if (unlikely(status & FAULT_USERSUPV))
  nr_dcplb_supv_miss[cpu]++;

 base = 0;
 idx = 0;
 do {
  eaddr = dcplb_bounds[idx].eaddr;
  if (addr < eaddr)
   break;
  base = eaddr;
 } while (++idx < dcplb_nr_bounds);

 if (unlikely(idx == dcplb_nr_bounds))
  return CPLB_NO_ADDR_MATCH;

 d_data = dcplb_bounds[idx].data;
 if (unlikely(d_data == 0))
  return CPLB_NO_ADDR_MATCH;

 addr1 = addr & ~(SIZE_4M - 1);
 addr &= ~(SIZE_1M - 1);
 d_data |= PAGE_SIZE_1MB;
 if (addr1 >= base && (addr1 + SIZE_4M) <= eaddr) {




  d_data |= PAGE_SIZE_4MB;
  addr = addr1;
 }


 idx = evict_one_dcplb(cpu);

 write_dcplb_data(cpu, idx, d_data, addr);

 return CPLB_RELOADED;
}
