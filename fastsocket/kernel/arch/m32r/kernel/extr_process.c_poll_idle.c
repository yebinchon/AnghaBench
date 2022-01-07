
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_relax () ;

__attribute__((used)) static void poll_idle (void)
{

 cpu_relax();
}
