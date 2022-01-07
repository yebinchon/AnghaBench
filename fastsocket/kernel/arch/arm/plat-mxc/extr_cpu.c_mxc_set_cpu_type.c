
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int __mxc_cpu_type ;

void mxc_set_cpu_type(unsigned int type)
{
 __mxc_cpu_type = type;
}
