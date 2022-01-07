
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 scalar_t__ clk ;
 int inb (int ) ;
 int mo_st ;
 int outb (scalar_t__,int ) ;
 scalar_t__ power ;
 int udelay (int) ;

__attribute__((used)) static int get_tune(u16 io)
{
 outb(power+clk,io);
 udelay(4);

 return !(inb(io) & mo_st);
}
