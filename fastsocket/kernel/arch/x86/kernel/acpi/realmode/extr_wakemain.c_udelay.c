
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int io_delay () ;

__attribute__((used)) static void udelay(int loops)
{
 while (loops--)
  io_delay();
}
