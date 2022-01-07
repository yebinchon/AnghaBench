
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
typedef int ssize_t ;


 int blk_queue_add_random (struct request_queue*) ;
 int queue_var_show (int ,char*) ;

__attribute__((used)) static ssize_t queue_random_show(struct request_queue *q, char *page)
{
 return queue_var_show(blk_queue_add_random(q), page);
}
