
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int io_delay () ;
 int outb (int ,int) ;

__attribute__((used)) static void reset_coprocessor(void)
{
 outb(0, 0xf0);
 io_delay();
 outb(0, 0xf1);
 io_delay();
}
