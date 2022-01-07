
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t bfin_write_emudat(uint32_t emudat)
{
 __asm__ __volatile__("emudat = %0;" : : "d"(emudat));
 return emudat;
}
