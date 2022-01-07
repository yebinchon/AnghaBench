
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int VSCR_SAT ;

__attribute__((used)) static unsigned int ctuxs(unsigned int x, int scale, unsigned int *vscrp)
{
 int exp;
 unsigned int mant;

 exp = (x >> 23) & 0xff;
 mant = x & 0x7fffff;
 if (exp == 255 && mant != 0)
  return 0;
 exp = exp - 127 + scale;
 if (exp < 0)
  return 0;
 if (x & 0x80000000) {

  *vscrp |= VSCR_SAT;
  return 0;
 }
 if (exp >= 32) {

  *vscrp |= VSCR_SAT;
  return 0xffffffff;
 }
 mant |= 0x800000;
 mant = (mant << 8) >> (31 - exp);
 return mant;
}
