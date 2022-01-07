
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_target_port {int qp; int lkey; } ;
struct srp_iu {int dma; } ;
struct ib_sge {int length; int lkey; int addr; } ;
struct ib_send_wr {uintptr_t wr_id; int num_sge; int send_flags; int opcode; struct ib_sge* sg_list; int * next; } ;


 int IB_SEND_SIGNALED ;
 int IB_WR_SEND ;
 int ib_post_send (int ,struct ib_send_wr*,struct ib_send_wr**) ;

__attribute__((used)) static int srp_post_send(struct srp_target_port *target,
    struct srp_iu *iu, int len)
{
 struct ib_sge list;
 struct ib_send_wr wr, *bad_wr;

 list.addr = iu->dma;
 list.length = len;
 list.lkey = target->lkey;

 wr.next = ((void*)0);
 wr.wr_id = (uintptr_t) iu;
 wr.sg_list = &list;
 wr.num_sge = 1;
 wr.opcode = IB_WR_SEND;
 wr.send_flags = IB_SEND_SIGNALED;

 return ib_post_send(target->qp, &wr, &bad_wr);
}
