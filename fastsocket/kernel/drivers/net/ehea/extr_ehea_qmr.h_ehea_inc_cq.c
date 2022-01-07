
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehea_cq {int hw_queue; } ;


 int hw_qeit_inc (int *) ;

__attribute__((used)) static inline void ehea_inc_cq(struct ehea_cq *cq)
{
 hw_qeit_inc(&cq->hw_queue);
}
