
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int clk ;
 int data ;
 int outb (int,int ) ;
 int power ;
 int udelay (int) ;
 int wren ;

__attribute__((used)) static void outbit(unsigned long bit, u16 io)
{
 int val = power | wren | (bit ? data : 0);

 outb(val, io);
 udelay(4);
 outb(val | clk, io);
 udelay(4);
 outb(val, io);
 udelay(4);
}
