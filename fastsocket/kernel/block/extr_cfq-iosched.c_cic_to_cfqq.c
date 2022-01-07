
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_queue {int dummy; } ;
struct cfq_io_context {struct cfq_queue** cfqq; } ;



__attribute__((used)) static inline struct cfq_queue *cic_to_cfqq(struct cfq_io_context *cic,
         bool is_sync)
{
 return cic->cfqq[is_sync];
}
