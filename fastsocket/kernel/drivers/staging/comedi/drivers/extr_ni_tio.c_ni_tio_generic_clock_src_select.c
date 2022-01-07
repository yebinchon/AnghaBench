
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_gpct {TYPE_1__* counter_dev; } ;
struct TYPE_2__ {int variant; } ;


 int BUG () ;
 int ni_660x_clock_src_select (struct ni_gpct const*) ;



 int ni_m_series_clock_src_select (struct ni_gpct const*) ;

__attribute__((used)) static unsigned ni_tio_generic_clock_src_select(const struct ni_gpct *counter)
{
 switch (counter->counter_dev->variant) {
 case 129:
 case 128:
  return ni_m_series_clock_src_select(counter);
  break;
 case 130:
  return ni_660x_clock_src_select(counter);
  break;
 default:
  BUG();
  break;
 }
 return 0;
}
