
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int jsf_inl (unsigned long) ;

__attribute__((used)) static void jsf_wait(unsigned long p) {
 unsigned int x1, x2;

 for (;;) {
  x1 = jsf_inl(p);
  x2 = jsf_inl(p);
  if ((x1 & 0x40404040) == (x2 & 0x40404040)) return;
 }
}
