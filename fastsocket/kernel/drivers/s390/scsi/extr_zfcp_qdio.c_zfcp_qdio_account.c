
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; } ;
struct zfcp_qdio {unsigned long long req_q_time; int req_q_util; int stat_lock; TYPE_1__ req_q; } ;


 int QDIO_MAX_BUFFERS_PER_Q ;
 int atomic_read (int *) ;
 unsigned long long get_clock_monotonic () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void zfcp_qdio_account(struct zfcp_qdio *qdio)
{
 unsigned long long now, span;
 int free, used;

 spin_lock(&qdio->stat_lock);
 now = get_clock_monotonic();
 span = (now - qdio->req_q_time) >> 12;
 free = atomic_read(&qdio->req_q.count);
 used = QDIO_MAX_BUFFERS_PER_Q - free;
 qdio->req_q_util += used * span;
 qdio->req_q_time = now;
 spin_unlock(&qdio->stat_lock);
}
