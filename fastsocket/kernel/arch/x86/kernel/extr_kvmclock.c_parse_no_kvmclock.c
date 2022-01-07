
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ kvmclock ;

__attribute__((used)) static int parse_no_kvmclock(char *arg)
{
 kvmclock = 0;
 return 0;
}
