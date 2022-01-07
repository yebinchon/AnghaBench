
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_irq {int nr_input_qs; } ;



__attribute__((used)) static inline int has_multiple_inq_on_dsci(struct qdio_irq *irq)
{
 return irq->nr_input_qs > 1;
}
