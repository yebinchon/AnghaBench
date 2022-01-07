
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_icache_range (unsigned long,int) ;

__attribute__((used)) static inline void patch_slb_encoding(unsigned int *insn_addr,
          unsigned int immed)
{
 *insn_addr = (*insn_addr & 0xffff0000) | immed;
 flush_icache_range((unsigned long)insn_addr, 4+
      (unsigned long)insn_addr);
}
