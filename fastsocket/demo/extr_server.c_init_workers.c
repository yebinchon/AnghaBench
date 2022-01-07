
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_processes () ;
 scalar_t__ process_mode ;

void init_workers(void)
{
 if (process_mode)
  init_processes();
}
