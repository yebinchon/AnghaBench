
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;



__attribute__((used)) static int calc_max_buckets(void)
{

 unsigned long mem = 2 * 1024 * 1024;
 mem /= sizeof(struct list_head);

 return mem;
}
