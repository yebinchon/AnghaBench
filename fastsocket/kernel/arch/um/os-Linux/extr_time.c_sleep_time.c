
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long skew ;

__attribute__((used)) static unsigned long long sleep_time(unsigned long long nsecs)
{
 return nsecs > skew ? nsecs - skew : 0;
}
