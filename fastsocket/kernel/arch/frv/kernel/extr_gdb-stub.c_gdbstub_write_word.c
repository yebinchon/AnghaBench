
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int gdbstub_addr_map (void*) ;
 int gdbstub_addr_unmap () ;
 int likely (int) ;

__attribute__((used)) static inline int gdbstub_write_word(void *addr, uint16_t val)
{
 unsigned long brr;

 if (!gdbstub_addr_map(addr))
  return 0;

 asm volatile("	movgs	gr0,brr	\n"
       "	sth%I2	%1,%M2	\n"
       "	movsg	brr,%0	\n"
       : "=r"(brr)
       : "r"(val), "m"(*(uint16_t *) addr));
 gdbstub_addr_unmap();
 return likely(!brr);
}
