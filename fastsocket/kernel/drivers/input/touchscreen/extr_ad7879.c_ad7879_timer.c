
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7879 {int dummy; } ;


 int ad7879_ts_event_release (struct ad7879*) ;

__attribute__((used)) static void ad7879_timer(unsigned long handle)
{
 struct ad7879 *ts = (void *)handle;

 ad7879_ts_event_release(ts);
}
