
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfq_queue {TYPE_1__* cfqg; } ;
struct cfq_data {int idle_slice_timer; } ;
struct TYPE_2__ {int blkg; } ;


 int cfq_blkiocg_update_idle_time_stats (int *) ;
 int del_timer (int *) ;

__attribute__((used)) static inline void cfq_del_timer(struct cfq_data *cfqd, struct cfq_queue *cfqq)
{
 del_timer(&cfqd->idle_slice_timer);
 cfq_blkiocg_update_idle_time_stats(&cfqq->cfqg->blkg);
}
