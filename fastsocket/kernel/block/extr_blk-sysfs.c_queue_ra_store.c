
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long ra_pages; } ;
struct request_queue {TYPE_1__ backing_dev_info; } ;
typedef int ssize_t ;


 int PAGE_CACHE_SHIFT ;
 int queue_var_store (unsigned long*,char const*,size_t) ;

__attribute__((used)) static ssize_t
queue_ra_store(struct request_queue *q, const char *page, size_t count)
{
 unsigned long ra_kb;
 ssize_t ret = queue_var_store(&ra_kb, page, count);

 q->backing_dev_info.ra_pages = ra_kb >> (PAGE_CACHE_SHIFT - 10);

 return ret;
}
