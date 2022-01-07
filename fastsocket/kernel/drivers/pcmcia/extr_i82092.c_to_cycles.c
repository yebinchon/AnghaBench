
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cycle_time ;

__attribute__((used)) static int to_cycles(int ns)
{
 if (cycle_time!=0)
  return ns/cycle_time;
 else
  return 0;
}
