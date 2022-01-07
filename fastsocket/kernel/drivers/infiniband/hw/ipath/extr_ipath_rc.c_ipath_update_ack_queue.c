
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_qp {unsigned int s_tail_ack_queue; int s_ack_state; } ;


 int ACKNOWLEDGE ;
 unsigned int IPATH_MAX_RDMA_ATOMIC ;
 int OP (int ) ;

__attribute__((used)) static inline void ipath_update_ack_queue(struct ipath_qp *qp, unsigned n)
{
 unsigned next;

 next = n + 1;
 if (next > IPATH_MAX_RDMA_ATOMIC)
  next = 0;
 if (n == qp->s_tail_ack_queue) {
  qp->s_tail_ack_queue = next;
  qp->s_ack_state = OP(ACKNOWLEDGE);
 }
}
