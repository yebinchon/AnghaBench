
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 unsigned long* mk_tig_addr (int) ;

__attribute__((used)) static inline void
titan_write_tig(int offset, u8 value)
{
 volatile unsigned long *tig_addr = mk_tig_addr(offset);
 *tig_addr = (unsigned long)value;
}
