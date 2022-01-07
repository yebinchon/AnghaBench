
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char inb (int) ;
 int outb_p (int,int) ;

__attribute__((used)) static void sub22 (char b, char c)
{
 int i;

 for(i = 0; i < 3; ++i) {
  inb(0x3f6);
  outb_p(b,0xb0);
  inb(0x3f6);
  outb_p(c,0xb4);
  inb(0x3f6);
  if(inb(0xb4) == c) {
   outb_p(7,0xb0);
   inb(0x3f6);
   return;
  }
 }
}
