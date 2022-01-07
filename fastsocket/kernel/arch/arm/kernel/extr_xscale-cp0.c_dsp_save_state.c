
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline void dsp_save_state(u32 *state)
{
 __asm__ __volatile__ (
  "mrrc	p0, 0, %0, %1, c0\n"
  : "=r" (state[0]), "=r" (state[1]));
}
