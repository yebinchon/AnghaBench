
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int empty_8042 () ;
 int outb (int,int) ;

__attribute__((used)) static void enable_a20_kbc(void)
{
 empty_8042();

 outb(0xd1, 0x64);
 empty_8042();

 outb(0xdf, 0x60);
 empty_8042();

 outb(0xff, 0x64);
 empty_8042();
}
