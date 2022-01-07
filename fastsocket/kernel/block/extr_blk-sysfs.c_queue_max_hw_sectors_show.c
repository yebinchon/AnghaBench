
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
typedef int ssize_t ;


 int queue_max_hw_sectors (struct request_queue*) ;
 int queue_var_show (int,char*) ;

__attribute__((used)) static ssize_t queue_max_hw_sectors_show(struct request_queue *q, char *page)
{
 int max_hw_sectors_kb = queue_max_hw_sectors(q) >> 1;

 return queue_var_show(max_hw_sectors_kb, (page));
}
