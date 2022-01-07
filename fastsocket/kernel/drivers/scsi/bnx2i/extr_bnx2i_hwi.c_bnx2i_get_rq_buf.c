
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct bnx2i_conn {TYPE_2__* ep; } ;
struct TYPE_3__ {scalar_t__ rq_cons_qe; scalar_t__ rq_last_qe; scalar_t__ rq_first_qe; scalar_t__ rq_cons_idx; int rqe_left; } ;
struct TYPE_4__ {TYPE_1__ qp; } ;


 int memcpy (char*,int *,int) ;

void bnx2i_get_rq_buf(struct bnx2i_conn *bnx2i_conn, char *ptr, int len)
{
 if (!bnx2i_conn->ep->qp.rqe_left)
  return;

 bnx2i_conn->ep->qp.rqe_left--;
 memcpy(ptr, (u8 *) bnx2i_conn->ep->qp.rq_cons_qe, len);
 if (bnx2i_conn->ep->qp.rq_cons_qe == bnx2i_conn->ep->qp.rq_last_qe) {
  bnx2i_conn->ep->qp.rq_cons_qe = bnx2i_conn->ep->qp.rq_first_qe;
  bnx2i_conn->ep->qp.rq_cons_idx = 0;
 } else {
  bnx2i_conn->ep->qp.rq_cons_qe++;
  bnx2i_conn->ep->qp.rq_cons_idx++;
 }
}
