
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ allow_ints ;

__attribute__((used)) static void perfmon_stop(void)
{
 allow_ints = 0;
}
