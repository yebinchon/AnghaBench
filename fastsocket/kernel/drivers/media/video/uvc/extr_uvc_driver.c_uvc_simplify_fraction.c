
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;


 int GFP_KERNEL ;
 int kfree (unsigned int*) ;
 unsigned int* kmalloc (unsigned int,int ) ;

void uvc_simplify_fraction(uint32_t *numerator, uint32_t *denominator,
  unsigned int n_terms, unsigned int threshold)
{
 uint32_t *an;
 uint32_t x, y, r;
 unsigned int i, n;

 an = kmalloc(n_terms * sizeof *an, GFP_KERNEL);
 if (an == ((void*)0))
  return;






 x = *numerator;
 y = *denominator;

 for (n = 0; n < n_terms && y != 0; ++n) {
  an[n] = x / y;
  if (an[n] >= threshold) {
   if (n < 2)
    n++;
   break;
  }

  r = x - an[n] * y;
  x = y;
  y = r;
 }


 x = 0;
 y = 1;

 for (i = n; i > 0; --i) {
  r = y;
  y = an[i-1] * y + x;
  x = r;
 }

 *numerator = y;
 *denominator = x;
 kfree(an);
}
