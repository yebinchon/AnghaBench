
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 payload(const u8 *tsp)
{
 if (!(tsp[3] & 0x10))
  return 0;

 if (tsp[3] & 0x20) {
  if (tsp[4] > 183)
   return 0;
  else
   return 184 - 1 - tsp[4];
 }

 return 184;
}
