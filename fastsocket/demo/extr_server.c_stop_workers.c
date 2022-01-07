
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ process_mode ;
 int stop_processes () ;

void stop_workers(void)
{
 if (process_mode)
  stop_processes();
}
