
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_target_port {int * tx_ring; int srp_host; int * rx_ring; int * recv_cq; int * send_cq; int * qp; } ;


 int SRP_RQ_SIZE ;
 int SRP_SQ_SIZE ;
 int ib_destroy_cq (int *) ;
 int ib_destroy_qp (int *) ;
 int srp_free_iu (int ,int ) ;

__attribute__((used)) static void srp_free_target_ib(struct srp_target_port *target)
{
 int i;

 ib_destroy_qp(target->qp);
 ib_destroy_cq(target->send_cq);
 ib_destroy_cq(target->recv_cq);

 target->qp = ((void*)0);
 target->send_cq = target->recv_cq = ((void*)0);

 for (i = 0; i < SRP_RQ_SIZE; ++i)
  srp_free_iu(target->srp_host, target->rx_ring[i]);
 for (i = 0; i < SRP_SQ_SIZE; ++i)
  srp_free_iu(target->srp_host, target->tx_ring[i]);
}
