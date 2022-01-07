
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int write_c0_compare (unsigned long) ;

__attribute__((used)) static int pnx8xxx_set_next_event(unsigned long delta,
    struct clock_event_device *evt)
{
 write_c0_compare(delta);
 return 0;
}
