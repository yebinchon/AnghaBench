
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ia64_pal_mc_drain () ;

__attribute__((used)) static void remote_pal_mc_drain(void *v)
{
 ia64_pal_mc_drain();
}
