
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {int dummy; } ;
typedef long ssize_t ;


 unsigned long WINDOW_LENGTH ;
 unsigned long WINDOW_MASK ;
 scalar_t__ iomapadr ;
 int memcpy_toio (scalar_t__,void const*,unsigned long) ;
 int oct5066_page (struct map_info*,unsigned long) ;
 int oct5066_spin ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void oct5066_copy_to(struct map_info *map, unsigned long to, const void *from, ssize_t len)
{
 while(len) {
  unsigned long thislen = len;
  if (len > (WINDOW_LENGTH - (to & WINDOW_MASK)))
   thislen = WINDOW_LENGTH-(to & WINDOW_MASK);

  spin_lock(&oct5066_spin);
  oct5066_page(map, to);
  memcpy_toio(iomapadr + to, from, thislen);
  spin_unlock(&oct5066_spin);
  to += thislen;
  from += thislen;
  len -= thislen;
 }
}
