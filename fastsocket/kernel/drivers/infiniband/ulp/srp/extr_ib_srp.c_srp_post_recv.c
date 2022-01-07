
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_target_port {int qp; int lkey; } ;
struct srp_iu {int size; int dma; } ;
struct ib_sge {int lkey; int length; int addr; } ;
struct ib_recv_wr {uintptr_t wr_id; int num_sge; struct ib_sge* sg_list; int * next; } ;


 int ib_post_recv (int ,struct ib_recv_wr*,struct ib_recv_wr**) ;

__attribute__((used)) static int srp_post_recv(struct srp_target_port *target, struct srp_iu *iu)
{
 struct ib_recv_wr wr, *bad_wr;
 struct ib_sge list;

 list.addr = iu->dma;
 list.length = iu->size;
 list.lkey = target->lkey;

 wr.next = ((void*)0);
 wr.wr_id = (uintptr_t) iu;
 wr.sg_list = &list;
 wr.num_sge = 1;

 return ib_post_recv(target->qp, &wr, &bad_wr);
}
