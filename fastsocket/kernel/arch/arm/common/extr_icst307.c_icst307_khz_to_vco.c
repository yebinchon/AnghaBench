
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icst307_vco {int s; unsigned int v; unsigned int r; } ;
struct icst307_params {unsigned int vd_max; unsigned int rd_max; unsigned long vco_max; unsigned int rd_min; int ref; unsigned int vd_min; } ;


 unsigned int ARRAY_SIZE (size_t*) ;
 size_t* idx2s ;
 unsigned long* s2div ;

struct icst307_vco
icst307_khz_to_vco(const struct icst307_params *p, unsigned long freq)
{
 struct icst307_vco vco = { .s = 1, .v = p->vd_max, .r = p->rd_max };
 unsigned long f;
 unsigned int i = 0, rd, best = (unsigned int)-1;





 do {
  f = freq * s2div[idx2s[i]];




  if (f > 6000 && f <= p->vco_max)
   break;
 } while (i < ARRAY_SIZE(idx2s));

 if (i >= ARRAY_SIZE(idx2s))
  return vco;

 vco.s = idx2s[i];





 for (rd = p->rd_min; rd <= p->rd_max; rd++) {
  unsigned long fref_div, f_pll;
  unsigned int vd;
  int f_diff;

  fref_div = (2 * p->ref) / rd;

  vd = (f + fref_div / 2) / fref_div;
  if (vd < p->vd_min || vd > p->vd_max)
   continue;

  f_pll = fref_div * vd;
  f_diff = f_pll - f;
  if (f_diff < 0)
   f_diff = -f_diff;

  if ((unsigned)f_diff < best) {
   vco.v = vd - 8;
   vco.r = rd - 2;
   if (f_diff == 0)
    break;
   best = f_diff;
  }
 }

 return vco;
}
