
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct qib_qp {int s_flags; size_t s_lsn; } ;


 size_t QIB_AETH_CREDIT_INVAL ;
 size_t QIB_AETH_CREDIT_MASK ;
 size_t QIB_AETH_CREDIT_SHIFT ;
 size_t QIB_MSN_MASK ;
 int QIB_S_UNLIMITED_CREDIT ;
 int QIB_S_WAIT_SSN_CREDIT ;
 size_t* credit_table ;
 scalar_t__ qib_cmp24 (size_t,size_t) ;
 int qib_schedule_send (struct qib_qp*) ;

void qib_get_credit(struct qib_qp *qp, u32 aeth)
{
 u32 credit = (aeth >> QIB_AETH_CREDIT_SHIFT) & QIB_AETH_CREDIT_MASK;






 if (credit == QIB_AETH_CREDIT_INVAL) {
  if (!(qp->s_flags & QIB_S_UNLIMITED_CREDIT)) {
   qp->s_flags |= QIB_S_UNLIMITED_CREDIT;
   if (qp->s_flags & QIB_S_WAIT_SSN_CREDIT) {
    qp->s_flags &= ~QIB_S_WAIT_SSN_CREDIT;
    qib_schedule_send(qp);
   }
  }
 } else if (!(qp->s_flags & QIB_S_UNLIMITED_CREDIT)) {

  credit = (aeth + credit_table[credit]) & QIB_MSN_MASK;
  if (qib_cmp24(credit, qp->s_lsn) > 0) {
   qp->s_lsn = credit;
   if (qp->s_flags & QIB_S_WAIT_SSN_CREDIT) {
    qp->s_flags &= ~QIB_S_WAIT_SSN_CREDIT;
    qib_schedule_send(qp);
   }
  }
 }
}
