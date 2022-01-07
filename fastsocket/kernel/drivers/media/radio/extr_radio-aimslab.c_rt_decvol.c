
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtrack {int io; } ;


 int outb (int,int ) ;
 int sleep_delay (int) ;

__attribute__((used)) static void rt_decvol(struct rtrack *rt)
{
 outb(0x58, rt->io);
 sleep_delay(100000);
 outb(0xd8, rt->io);
}
