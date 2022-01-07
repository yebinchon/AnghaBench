
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int fpu_exception_flags ;

void float_raise(unsigned int flags)
{
 fpu_exception_flags |= flags;
}
