
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_target_port {int free_tx; } ;
struct srp_iu {int list; } ;
struct ib_wc {scalar_t__ status; int opcode; scalar_t__ wr_id; } ;
struct ib_cq {int dummy; } ;


 scalar_t__ IB_WC_SUCCESS ;
 scalar_t__ ib_poll_cq (struct ib_cq*,int,struct ib_wc*) ;
 scalar_t__ likely (int) ;
 int list_add (int *,int *) ;
 int srp_handle_qp_err (scalar_t__,int ,struct srp_target_port*) ;

__attribute__((used)) static void srp_send_completion(struct ib_cq *cq, void *target_ptr)
{
 struct srp_target_port *target = target_ptr;
 struct ib_wc wc;
 struct srp_iu *iu;

 while (ib_poll_cq(cq, 1, &wc) > 0) {
  if (likely(wc.status == IB_WC_SUCCESS)) {
   iu = (struct srp_iu *) (uintptr_t) wc.wr_id;
   list_add(&iu->list, &target->free_tx);
  } else {
   srp_handle_qp_err(wc.status, wc.opcode, target);
  }
 }
}
