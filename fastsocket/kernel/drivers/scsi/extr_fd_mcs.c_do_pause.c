
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mdelay (int) ;

__attribute__((used)) static void do_pause(unsigned amount)
{
 do {
  mdelay(10);
 } while (--amount);
}
