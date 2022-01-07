
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 int mm_cpumask (struct mm_struct*) ;
 int smp_call_function_many (int ,int ,struct mm_struct*,int) ;
 int tsb_sync ;

void smp_tsb_sync(struct mm_struct *mm)
{
 smp_call_function_many(mm_cpumask(mm), tsb_sync, mm, 1);
}
