
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALIGN_DEST_TO8_UP (unsigned long,unsigned long,long) ;
 int DO_REST_UP (unsigned long,unsigned long,long) ;

__attribute__((used)) static inline void __memcpy_unaligned_up (unsigned long d, unsigned long s,
       long n)
{
 ALIGN_DEST_TO8_UP(d,s,n);
 n -= 8;
 if (n >= 0) {
  unsigned long low_word, high_word;
  __asm__("ldq_u %0,%1":"=r" (low_word):"m" (*(unsigned long *) s));
  do {
   unsigned long tmp;
   __asm__("ldq_u %0,%1":"=r" (high_word):"m" (*(unsigned long *)(s+8)));
   n -= 8;
   __asm__("extql %1,%2,%0"
    :"=r" (low_word)
    :"r" (low_word), "r" (s));
   __asm__("extqh %1,%2,%0"
    :"=r" (tmp)
    :"r" (high_word), "r" (s));
   s += 8;
   *(unsigned long *) d = low_word | tmp;
   d += 8;
   low_word = high_word;
  } while (n >= 0);
 }
 n += 8;
 DO_REST_UP(d,s,n);
}
