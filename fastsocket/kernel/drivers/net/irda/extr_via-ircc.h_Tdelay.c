
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef int __u16 ;


 int inb (int) ;
 int outb (int ,int) ;

__attribute__((used)) static void Tdelay(__u16 scale)
{
 __u8 bTmp;
 int i, j;

 for (j = 0; j < scale; j++) {
  for (i = 0; i < 0x50; i++) {
   bTmp = inb(0xeb);
   outb(bTmp, 0xeb);
  }
 }
}
