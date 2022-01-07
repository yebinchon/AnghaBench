
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long (* get_tick ) () ;} ;


 unsigned long stub1 () ;
 unsigned long stub2 () ;
 TYPE_1__* tick_ops ;

void __delay(unsigned long loops)
{
 unsigned long bclock, now;

 bclock = tick_ops->get_tick();
 do {
  now = tick_ops->get_tick();
 } while ((now-bclock) < loops);
}
