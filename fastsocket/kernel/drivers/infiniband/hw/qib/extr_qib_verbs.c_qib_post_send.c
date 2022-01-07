
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_qp {int s_work; } ;
struct ib_send_wr {struct ib_send_wr* next; } ;
struct ib_qp {int dummy; } ;


 int qib_do_send (int *) ;
 int qib_post_one_send (struct qib_qp*,struct ib_send_wr*,int*) ;
 struct qib_qp* to_iqp (struct ib_qp*) ;

__attribute__((used)) static int qib_post_send(struct ib_qp *ibqp, struct ib_send_wr *wr,
    struct ib_send_wr **bad_wr)
{
 struct qib_qp *qp = to_iqp(ibqp);
 int err = 0;
 int scheduled = 0;

 for (; wr; wr = wr->next) {
  err = qib_post_one_send(qp, wr, &scheduled);
  if (err) {
   *bad_wr = wr;
   goto bail;
  }
 }


 if (!scheduled)
  qib_do_send(&qp->s_work);

bail:
 return err;
}
