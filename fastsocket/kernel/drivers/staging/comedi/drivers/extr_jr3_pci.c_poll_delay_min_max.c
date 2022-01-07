
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_delay_t {int min; int max; } ;



__attribute__((used)) static struct poll_delay_t poll_delay_min_max(int min, int max)
{
 struct poll_delay_t result;

 result.min = min;
 result.max = max;
 return result;
}
