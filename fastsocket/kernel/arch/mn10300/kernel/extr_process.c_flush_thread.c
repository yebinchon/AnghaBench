
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_fpu () ;

void flush_thread(void)
{
 flush_fpu();
}
