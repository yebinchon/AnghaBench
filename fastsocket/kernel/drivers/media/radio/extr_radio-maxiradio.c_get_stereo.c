
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int inb (int ) ;
 int mo_st ;
 int outb (int ,int ) ;
 int power ;
 int udelay (int) ;

__attribute__((used)) static int get_stereo(u16 io)
{
 outb(power,io);
 udelay(4);

 return !(inb(io) & mo_st);
}
