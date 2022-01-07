
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tail; } ;
struct ocrdma_eq {TYPE_1__ q; } ;


 int OCRDMA_EQ_LEN ;

__attribute__((used)) static inline void ocrdma_eq_inc_tail(struct ocrdma_eq *eq)
{
 eq->q.tail = (eq->q.tail + 1) & (OCRDMA_EQ_LEN - 1);
}
