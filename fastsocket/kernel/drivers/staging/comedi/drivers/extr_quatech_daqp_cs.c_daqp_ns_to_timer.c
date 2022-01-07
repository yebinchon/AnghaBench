
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int daqp_ns_to_timer(unsigned int *ns, int round)
{
 int timer;

 timer = *ns / 200;
 *ns = timer * 200;

 return timer;
}
