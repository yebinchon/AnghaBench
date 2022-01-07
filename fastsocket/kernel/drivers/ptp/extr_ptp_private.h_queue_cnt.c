
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timestamp_event_queue {int tail; int head; } ;


 int PTP_MAX_TIMESTAMPS ;

__attribute__((used)) static inline int queue_cnt(struct timestamp_event_queue *q)
{
 int cnt = q->tail - q->head;
 return cnt < 0 ? PTP_MAX_TIMESTAMPS + cnt : cnt;
}
