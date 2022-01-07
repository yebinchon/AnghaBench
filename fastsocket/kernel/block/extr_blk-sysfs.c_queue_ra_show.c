
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ra_pages; } ;
struct request_queue {TYPE_1__ backing_dev_info; } ;
typedef int ssize_t ;


 int PAGE_CACHE_SHIFT ;
 int queue_var_show (unsigned long,char*) ;

__attribute__((used)) static ssize_t queue_ra_show(struct request_queue *q, char *page)
{
 unsigned long ra_kb = q->backing_dev_info.ra_pages <<
     (PAGE_CACHE_SHIFT - 10);

 return queue_var_show(ra_kb, (page));
}
