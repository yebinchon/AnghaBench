
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int P4_ESCR_MSR_IDX (unsigned int) ;
 unsigned int P4_ESCR_MSR_TABLE_SIZE ;
 int WARN_ONCE (int,char*,unsigned int) ;
 unsigned int* p4_escr_table ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int p4_get_escr_idx(unsigned int addr)
{
 unsigned int idx = P4_ESCR_MSR_IDX(addr);

 if (unlikely(idx >= P4_ESCR_MSR_TABLE_SIZE ||
   !p4_escr_table[idx] ||
   p4_escr_table[idx] != addr)) {
  WARN_ONCE(1, "P4 PMU: Wrong address passed: %x\n", addr);
  return -1;
 }

 return idx;
}
