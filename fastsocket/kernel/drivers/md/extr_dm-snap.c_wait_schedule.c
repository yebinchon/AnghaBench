
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int schedule () ;

__attribute__((used)) static int wait_schedule(void *ptr)
{
 schedule();

 return 0;
}
