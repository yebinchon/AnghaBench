
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int gdbstub_addr_map (void const*) ;
 int gdbstub_addr_unmap () ;
 int likely (int) ;

__attribute__((used)) static inline int gdbstub_read_word(const void *addr, uint16_t *_res)
{
 unsigned long brr;
 uint16_t res;

 if (!gdbstub_addr_map(addr))
  return 0;

 asm volatile("	movgs	gr0,brr	\n"
       "	lduh%I2	%M2,%0	\n"
       "	movsg	brr,%1	\n"
       : "=r"(res), "=r"(brr)
       : "m"(*(uint16_t *) addr));
 *_res = res;
 gdbstub_addr_unmap();
 return likely(!brr);
}
