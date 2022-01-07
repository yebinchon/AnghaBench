
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int stop_workers () ;

void exit_cleanup(void)
{
 stop_workers();
 exit(EXIT_FAILURE);
}
