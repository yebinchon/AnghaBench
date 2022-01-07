
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_qp {int wait; int refcount; } ;
struct ipath_mcast_qp {struct ipath_qp* qp; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree (struct ipath_mcast_qp*) ;
 int wake_up (int *) ;

__attribute__((used)) static void ipath_mcast_qp_free(struct ipath_mcast_qp *mqp)
{
 struct ipath_qp *qp = mqp->qp;


 if (atomic_dec_and_test(&qp->refcount))
  wake_up(&qp->wait);

 kfree(mqp);
}
