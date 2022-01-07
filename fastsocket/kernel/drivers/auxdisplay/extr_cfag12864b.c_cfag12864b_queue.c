
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int cfag12864b_rate ;
 int cfag12864b_work ;
 int cfag12864b_workqueue ;
 int queue_delayed_work (int ,int *,int) ;

__attribute__((used)) static void cfag12864b_queue(void)
{
 queue_delayed_work(cfag12864b_workqueue, &cfag12864b_work,
  HZ / cfag12864b_rate);
}
