
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGSTOP ;
 int kill (int,int ) ;

void os_stop_process(int pid)
{
 kill(pid, SIGSTOP);
}
