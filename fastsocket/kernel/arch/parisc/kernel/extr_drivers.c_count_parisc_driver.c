
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parisc_driver {int dummy; } ;
struct match_count {int count; struct parisc_driver* driver; } ;


 int for_each_padev (int ,struct match_count*) ;
 int match_and_count ;

int count_parisc_driver(struct parisc_driver *driver)
{
 struct match_count m = {
  .driver = driver,
  .count = 0,
 };

 for_each_padev(match_and_count, &m);

 return m.count;
}
