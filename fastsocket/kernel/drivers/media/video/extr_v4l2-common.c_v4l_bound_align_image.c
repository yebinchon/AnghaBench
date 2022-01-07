
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int __ffs (int ) ;
 unsigned int __fls (unsigned int) ;
 int clamp_align (int ,unsigned int,unsigned int,unsigned int) ;

void v4l_bound_align_image(u32 *w, unsigned int wmin, unsigned int wmax,
      unsigned int walign,
      u32 *h, unsigned int hmin, unsigned int hmax,
      unsigned int halign, unsigned int salign)
{
 *w = clamp_align(*w, wmin, wmax, walign);
 *h = clamp_align(*h, hmin, hmax, halign);


 if (!salign)
  return;


 walign = __ffs(*w);
 halign = __ffs(*h);

 if (walign + halign < salign) {

  unsigned int wmaxa = __fls(wmax ^ (wmin - 1));

  unsigned int hmaxa = __fls(hmax ^ (hmin - 1));


  do {
   if (halign >= hmaxa ||
       (walign <= halign && walign < wmaxa)) {
    *w = clamp_align(*w, wmin, wmax, walign + 1);
    walign = __ffs(*w);
   } else {
    *h = clamp_align(*h, hmin, hmax, halign + 1);
    halign = __ffs(*h);
   }
  } while (halign + walign < salign);
 }
}
