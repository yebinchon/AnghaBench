
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_qp {int dummy; } ;
struct ib_send_wr {struct ib_send_wr* next; } ;
struct ib_qp {int dummy; } ;


 int ipath_do_send (unsigned long) ;
 int ipath_post_one_send (struct ipath_qp*,struct ib_send_wr*) ;
 struct ipath_qp* to_iqp (struct ib_qp*) ;

__attribute__((used)) static int ipath_post_send(struct ib_qp *ibqp, struct ib_send_wr *wr,
      struct ib_send_wr **bad_wr)
{
 struct ipath_qp *qp = to_iqp(ibqp);
 int err = 0;

 for (; wr; wr = wr->next) {
  err = ipath_post_one_send(qp, wr);
  if (err) {
   *bad_wr = wr;
   goto bail;
  }
 }


 ipath_do_send((unsigned long) qp);

bail:
 return err;
}
