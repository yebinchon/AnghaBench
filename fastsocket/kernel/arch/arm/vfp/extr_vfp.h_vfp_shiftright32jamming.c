
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;



__attribute__((used)) static inline u32 vfp_shiftright32jamming(u32 val, unsigned int shift)
{
 if (shift) {
  if (shift < 32)
   val = val >> shift | ((val << (32 - shift)) != 0);
  else
   val = val != 0;
 }
 return val;
}
