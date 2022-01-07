
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_qp {int state; int q_lock; } ;
typedef enum ocrdma_qp_state { ____Placeholder_ocrdma_qp_state } ocrdma_qp_state ;
typedef enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;


 int EINVAL ;







 int get_ibqp_state (int) ;
 int get_ocrdma_qp_state (int) ;
 int ocrdma_flush_qp (struct ocrdma_qp*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ocrdma_qp_state_machine(struct ocrdma_qp *qp, enum ib_qp_state new_ib_state,
       enum ib_qp_state *old_ib_state)
{
 unsigned long flags;
 int status = 0;
 enum ocrdma_qp_state new_state;
 new_state = get_ocrdma_qp_state(new_ib_state);


 spin_lock_irqsave(&qp->q_lock, flags);

 if (old_ib_state)
  *old_ib_state = get_ibqp_state(qp->state);
 if (new_state == qp->state) {
  spin_unlock_irqrestore(&qp->q_lock, flags);
  return 1;
 }

 switch (qp->state) {
 case 132:
  switch (new_state) {
  case 132:
  case 133:
   break;
  default:
   status = -EINVAL;
   break;
  };
  break;
 case 133:

  switch (new_state) {
  case 133:
  case 131:
   break;
  case 134:
   ocrdma_flush_qp(qp);
   break;
  default:
   status = -EINVAL;
   break;
  };
  break;
 case 131:

  switch (new_state) {
  case 130:
   break;
  case 134:
   ocrdma_flush_qp(qp);
   break;
  default:
   status = -EINVAL;
   break;
  };
  break;
 case 130:

  switch (new_state) {
  case 129:
  case 128:
   break;
  case 134:
   ocrdma_flush_qp(qp);
   break;
  default:
   status = -EINVAL;
   break;
  };
  break;
 case 129:

  switch (new_state) {
  case 130:
  case 128:
  case 134:
   break;
  default:
   status = -EINVAL;
   break;
  };
  break;
 case 128:
  switch (new_state) {
  case 130:
  case 134:
   break;
  default:
   status = -EINVAL;
   break;
  };
  break;
 case 134:

  switch (new_state) {
  case 132:
   break;
  default:
   status = -EINVAL;
   break;
  };
  break;
 default:
  status = -EINVAL;
  break;
 };
 if (!status)
  qp->state = new_state;

 spin_unlock_irqrestore(&qp->q_lock, flags);
 return status;
}
