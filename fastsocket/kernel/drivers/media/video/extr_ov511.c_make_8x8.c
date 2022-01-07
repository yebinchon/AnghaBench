
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void
make_8x8(unsigned char *pIn, unsigned char *pOut, int w)
{
 unsigned char *pOut1 = pOut;
 int x, y;

 for (y = 0; y < 8; y++) {
  pOut1 = pOut;
  for (x = 0; x < 8; x++) {
   *pOut1++ = *pIn++;
  }
  pOut += w;
 }
}
