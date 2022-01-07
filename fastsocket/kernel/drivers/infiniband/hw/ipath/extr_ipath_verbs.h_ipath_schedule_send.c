
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_qp {int s_flags; int s_task; } ;


 int IPATH_S_ANY_WAIT ;
 int IPATH_S_BUSY ;
 int tasklet_hi_schedule (int *) ;

__attribute__((used)) static inline void ipath_schedule_send(struct ipath_qp *qp)
{
 if (qp->s_flags & IPATH_S_ANY_WAIT)
  qp->s_flags &= ~IPATH_S_ANY_WAIT;
 if (!(qp->s_flags & IPATH_S_BUSY))
  tasklet_hi_schedule(&qp->s_task);
}
