
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timestamp_event_queue {int dummy; } ;


 int PTP_MAX_TIMESTAMPS ;
 int queue_cnt (struct timestamp_event_queue*) ;

__attribute__((used)) static inline int queue_free(struct timestamp_event_queue *q)
{
 return PTP_MAX_TIMESTAMPS - queue_cnt(q) - 1;
}
