
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cycle_time ;

__attribute__((used)) static int to_cycles(int ns)
{
    if (ns < 14)
 return 0;
    else
 return 2*(ns-14)/cycle_time;
}
