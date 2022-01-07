
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int allow_ints ;

__attribute__((used)) static int perfmon_start(void)
{
 allow_ints = 1;
 return 0;
}
