
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_queue {int dummy; } ;
struct cfq_io_context {struct cfq_queue** cfqq; } ;



__attribute__((used)) static inline void cic_set_cfqq(struct cfq_io_context *cic,
    struct cfq_queue *cfqq, bool is_sync)
{
 cic->cfqq[is_sync] = cfqq;
}
