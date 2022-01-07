
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ wf_overtemp ;

int wf_is_overtemp(void)
{
 return (wf_overtemp != 0);
}
