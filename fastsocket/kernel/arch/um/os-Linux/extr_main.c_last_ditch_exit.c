
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int uml_cleanup () ;

__attribute__((used)) static void last_ditch_exit(int sig)
{
 uml_cleanup();
 exit(1);
}
