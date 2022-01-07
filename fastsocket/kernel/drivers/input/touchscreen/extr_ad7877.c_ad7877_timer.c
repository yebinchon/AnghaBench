
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7877 {int dummy; } ;


 int ad7877_ts_event_release (struct ad7877*) ;

__attribute__((used)) static void ad7877_timer(unsigned long handle)
{
 struct ad7877 *ts = (void *)handle;

 ad7877_ts_event_release(ts);
}
