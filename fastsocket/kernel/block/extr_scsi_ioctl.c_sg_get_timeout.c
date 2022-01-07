
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int sg_timeout; } ;


 int jiffies_to_clock_t (int ) ;

__attribute__((used)) static int sg_get_timeout(struct request_queue *q)
{
 return jiffies_to_clock_t(q->sg_timeout);
}
