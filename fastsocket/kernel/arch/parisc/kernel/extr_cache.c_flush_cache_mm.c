
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 int flush_cache_all () ;
 int flush_cache_all_local () ;

void flush_cache_mm(struct mm_struct *mm)
{



 flush_cache_all_local();

}
