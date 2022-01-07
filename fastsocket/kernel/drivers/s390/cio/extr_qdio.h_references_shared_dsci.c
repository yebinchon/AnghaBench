
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qdio_irq {int * dsci; } ;
struct TYPE_2__ {int ind; } ;


 size_t TIQDIO_SHARED_IND ;
 TYPE_1__* q_indicators ;

__attribute__((used)) static inline int references_shared_dsci(struct qdio_irq *irq)
{
 return irq->dsci == &q_indicators[TIQDIO_SHARED_IND].ind;
}
