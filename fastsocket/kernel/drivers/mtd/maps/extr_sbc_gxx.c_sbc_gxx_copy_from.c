
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {int dummy; } ;
typedef long ssize_t ;


 unsigned long WINDOW_LENGTH ;
 unsigned long WINDOW_MASK ;
 scalar_t__ iomapadr ;
 int memcpy_fromio (void*,scalar_t__,unsigned long) ;
 int sbc_gxx_page (struct map_info*,unsigned long) ;
 int sbc_gxx_spin ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void sbc_gxx_copy_from(struct map_info *map, void *to, unsigned long from, ssize_t len)
{
 while(len) {
  unsigned long thislen = len;
  if (len > (WINDOW_LENGTH - (from & WINDOW_MASK)))
   thislen = WINDOW_LENGTH-(from & WINDOW_MASK);

  spin_lock(&sbc_gxx_spin);
  sbc_gxx_page(map, from);
  memcpy_fromio(to, iomapadr + (from & WINDOW_MASK), thislen);
  spin_unlock(&sbc_gxx_spin);
  to += thislen;
  from += thislen;
  len -= thislen;
 }
}
