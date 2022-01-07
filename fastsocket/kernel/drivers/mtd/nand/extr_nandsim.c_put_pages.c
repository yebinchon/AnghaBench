
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nandsim {int held_cnt; int * held_pages; } ;


 int page_cache_release (int ) ;

__attribute__((used)) static void put_pages(struct nandsim *ns)
{
 int i;

 for (i = 0; i < ns->held_cnt; i++)
  page_cache_release(ns->held_pages[i]);
}
