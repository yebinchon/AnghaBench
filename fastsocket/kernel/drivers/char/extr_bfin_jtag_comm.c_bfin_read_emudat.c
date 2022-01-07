
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t bfin_read_emudat(void)
{
 uint32_t emudat;
 __asm__ __volatile__("%0 = emudat;" : "=d"(emudat));
 return emudat;
}
