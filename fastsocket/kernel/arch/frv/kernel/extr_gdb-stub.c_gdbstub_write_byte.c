
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int gdbstub_addr_map (void*) ;
 int gdbstub_addr_unmap () ;
 int likely (int) ;

__attribute__((used)) static inline int gdbstub_write_byte(void *addr, uint8_t val)
{
 unsigned long brr;

 if (!gdbstub_addr_map(addr))
  return 0;

 asm volatile("	movgs	gr0,brr	\n"
       "	stb%I2	%1,%M2	\n"
       "	movsg	brr,%0	\n"
       : "=r"(brr)
       : "r"(val), "m"(*(uint8_t *) addr));
 gdbstub_addr_unmap();
 return likely(!brr);
}
