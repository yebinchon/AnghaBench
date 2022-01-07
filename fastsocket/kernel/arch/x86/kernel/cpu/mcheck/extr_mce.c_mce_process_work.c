
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int MCE_VECTOR ;
 scalar_t__ mce_ring_get (unsigned long*) ;
 int memory_failure (unsigned long,int ,int ) ;

__attribute__((used)) static void mce_process_work(struct work_struct *dummy)
{
 unsigned long pfn;

 while (mce_ring_get(&pfn))
  memory_failure(pfn, MCE_VECTOR, 0);
}
