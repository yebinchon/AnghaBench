
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSPC ;
 unsigned int NR_PMB_ENTRIES ;
 unsigned long PMB_C ;
 unsigned int PMB_NO_ENTRY ;
 unsigned long PMB_V ;
 unsigned long PMB_WT ;
 int ctrl_outl (unsigned long,int ) ;
 unsigned int find_first_zero_bit (int *,unsigned int) ;
 scalar_t__ likely (unsigned long) ;
 int mk_pmb_addr (unsigned int) ;
 int mk_pmb_data (unsigned int) ;
 int pmb_map ;
 scalar_t__ test_and_set_bit (unsigned int,int *) ;
 scalar_t__ unlikely (int) ;

int __set_pmb_entry(unsigned long vpn, unsigned long ppn,
      unsigned long flags, int *entry)
{
 unsigned int pos = *entry;

 if (unlikely(pos == PMB_NO_ENTRY))
  pos = find_first_zero_bit(&pmb_map, NR_PMB_ENTRIES);

repeat:
 if (unlikely(pos > NR_PMB_ENTRIES))
  return -ENOSPC;

 if (test_and_set_bit(pos, &pmb_map)) {
  pos = find_first_zero_bit(&pmb_map, NR_PMB_ENTRIES);
  goto repeat;
 }

 ctrl_outl(vpn | PMB_V, mk_pmb_addr(pos));
 ctrl_outl(ppn | flags | PMB_V, mk_pmb_data(pos));

 *entry = pos;

 return 0;
}
