
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TC_HIGH ;
 scalar_t__ TC_LOW ;
 scalar_t__ TC_MID ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static void sym53c416_set_transfer_counter(int base, unsigned int len)
{

 outb(len & 0x0000FF, base + TC_LOW);
 outb((len & 0x00FF00) >> 8, base + TC_MID);
 outb((len & 0xFF0000) >> 16, base + TC_HIGH);
}
