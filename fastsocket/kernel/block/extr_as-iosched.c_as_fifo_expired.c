
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int dummy; } ;
struct as_data {void** last_check_fifo; long* fifo_expire; TYPE_1__* fifo_list; } ;
struct TYPE_2__ {int next; } ;


 void* jiffies ;
 scalar_t__ list_empty (TYPE_1__*) ;
 struct request* rq_entry_fifo (int ) ;
 int rq_fifo_time (struct request*) ;
 int time_after (void*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int as_fifo_expired(struct as_data *ad, int adir)
{
 struct request *rq;
 long delta_jif;

 delta_jif = jiffies - ad->last_check_fifo[adir];
 if (unlikely(delta_jif < 0))
  delta_jif = -delta_jif;
 if (delta_jif < ad->fifo_expire[adir])
  return 0;

 ad->last_check_fifo[adir] = jiffies;

 if (list_empty(&ad->fifo_list[adir]))
  return 0;

 rq = rq_entry_fifo(ad->fifo_list[adir].next);

 return time_after(jiffies, rq_fifo_time(rq));
}
