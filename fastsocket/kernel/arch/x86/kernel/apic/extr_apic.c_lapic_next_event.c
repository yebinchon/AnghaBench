
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int APIC_TMICT ;
 int apic_write (int ,unsigned long) ;

__attribute__((used)) static int lapic_next_event(unsigned long delta,
       struct clock_event_device *evt)
{
 apic_write(APIC_TMICT, delta);
 return 0;
}
