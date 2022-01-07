
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __oprofile_hrtimer_start ;
 int on_each_cpu (int ,int *,int) ;

__attribute__((used)) static int oprofile_hrtimer_start(void)
{
 on_each_cpu(__oprofile_hrtimer_start, ((void*)0), 1);
 return 0;
}
