
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 int cacheop_on_each_cpu (int ,struct mm_struct*,int) ;
 int local_flush_cache_mm ;

void flush_cache_mm(struct mm_struct *mm)
{
 cacheop_on_each_cpu(local_flush_cache_mm, mm, 1);
}
