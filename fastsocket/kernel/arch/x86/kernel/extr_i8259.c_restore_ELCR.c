
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (char,int) ;

__attribute__((used)) static void restore_ELCR(char *trigger)
{
 outb(trigger[0], 0x4d0);
 outb(trigger[1], 0x4d1);
}
