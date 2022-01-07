
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int PIT_CH0 ;
 int i8253_lock ;
 int outb (unsigned long,int ) ;
 int outb_p (unsigned long,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int pit_next_event(unsigned long delta, struct clock_event_device *evt)
{
 spin_lock(&i8253_lock);
 outb_p(delta & 0xff , PIT_CH0);
 outb(delta >> 8 , PIT_CH0);
 spin_unlock(&i8253_lock);

 return 0;
}
