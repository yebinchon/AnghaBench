
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct byte4 {char* s; unsigned int n; } ;


 unsigned int jsf_inl (unsigned long) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static void jsfd_read(char *buf, unsigned long p, size_t togo) {
 union byte4 {
  char s[4];
  unsigned int n;
 } b;

 while (togo >= 4) {
  togo -= 4;
  b.n = jsf_inl(p);
  memcpy(buf, b.s, 4);
  p += 4;
  buf += 4;
 }
}
