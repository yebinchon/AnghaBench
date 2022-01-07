
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ force_ep80219 ;
 scalar_t__ machine_is_ep80219 () ;

__attribute__((used)) static int is_ep80219(void)
{
 if (machine_is_ep80219() || force_ep80219)
  return 1;
 else
  return 0;
}
