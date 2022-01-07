
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehea_cqe {int dummy; } ;
struct ehea_cq {int hw_queue; } ;


 struct ehea_cqe* hw_qeit_get_valid (int *) ;

__attribute__((used)) static inline struct ehea_cqe *ehea_poll_cq(struct ehea_cq *my_cq)
{
 return hw_qeit_get_valid(&my_cq->hw_queue);
}
