
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DLE ;

__attribute__((used)) static inline void
insert_dle(unsigned char *dest, unsigned char *src, int count) {

 while (count--) {
  *dest++ = *src;
  if (*src++ == DLE)
   *dest++ = DLE;
 }
}
