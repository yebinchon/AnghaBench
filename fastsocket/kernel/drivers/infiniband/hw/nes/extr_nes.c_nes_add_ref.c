
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nes_qp {int refcount; } ;
struct ib_qp {int qp_num; } ;


 int NES_DBG_QP ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int nes_debug (int ,char*,int ,int ) ;
 struct nes_qp* to_nesqp (struct ib_qp*) ;

void nes_add_ref(struct ib_qp *ibqp)
{
 struct nes_qp *nesqp;

 nesqp = to_nesqp(ibqp);
 nes_debug(NES_DBG_QP, "Bumping refcount for QP%u.  Pre-inc value = %u\n",
   ibqp->qp_num, atomic_read(&nesqp->refcount));
 atomic_inc(&nesqp->refcount);
}
