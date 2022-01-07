
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct menu_device {int* intervals; int expected_us; int predicted_us; } ;


 int INTERVALS ;
 int STDDEV_THRESH ;

__attribute__((used)) static void detect_repeating_patterns(struct menu_device *data)
{
 int i;
 uint64_t avg = 0;
 uint64_t stddev = 0;


 for (i = 0; i < INTERVALS; i++)
  avg += data->intervals[i];
 avg = avg / INTERVALS;


 if (avg > data->expected_us)
  return;

 for (i = 0; i < INTERVALS; i++)
  stddev += (data->intervals[i] - avg) *
     (data->intervals[i] - avg);

 stddev = stddev / INTERVALS;






 if (avg && stddev < STDDEV_THRESH)
  data->predicted_us = avg;
}
