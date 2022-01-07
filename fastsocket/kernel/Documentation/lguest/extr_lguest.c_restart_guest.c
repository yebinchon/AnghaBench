
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FD_SETSIZE ;
 int cleanup_devices () ;
 int close (unsigned int) ;
 int err (int,char*,int ) ;
 int execv (int ,int *) ;
 int * main_args ;

__attribute__((used)) static void __attribute__((noreturn)) restart_guest(void)
{
 unsigned int i;





 for (i = 3; i < FD_SETSIZE; i++)
  close(i);


 cleanup_devices();

 execv(main_args[0], main_args);
 err(1, "Could not exec %s", main_args[0]);
}
