
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void bfin_keycodecpy(unsigned short *keycode,
   const unsigned int *pdata_kc,
   unsigned short keymapsize)
{
 unsigned int i;

 for (i = 0; i < keymapsize; i++) {
  keycode[i] = pdata_kc[i] & 0xffff;
  keycode[i + keymapsize] = pdata_kc[i] >> 16;
 }
}
