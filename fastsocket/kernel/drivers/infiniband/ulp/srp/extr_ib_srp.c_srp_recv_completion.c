
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_target_port {int dummy; } ;
struct ib_wc {scalar_t__ status; int opcode; } ;
struct ib_cq {int dummy; } ;


 int IB_CQ_NEXT_COMP ;
 scalar_t__ IB_WC_SUCCESS ;
 scalar_t__ ib_poll_cq (struct ib_cq*,int,struct ib_wc*) ;
 int ib_req_notify_cq (struct ib_cq*,int ) ;
 scalar_t__ likely (int) ;
 int srp_handle_qp_err (scalar_t__,int ,struct srp_target_port*) ;
 int srp_handle_recv (struct srp_target_port*,struct ib_wc*) ;

__attribute__((used)) static void srp_recv_completion(struct ib_cq *cq, void *target_ptr)
{
 struct srp_target_port *target = target_ptr;
 struct ib_wc wc;

 ib_req_notify_cq(cq, IB_CQ_NEXT_COMP);
 while (ib_poll_cq(cq, 1, &wc) > 0) {
  if (likely(wc.status == IB_WC_SUCCESS)) {
   srp_handle_recv(target, &wc);
  } else {
   srp_handle_qp_err(wc.status, wc.opcode, target);
  }
 }
}
