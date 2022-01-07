
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IB_ACCESS_LOCAL_WRITE ;
 int IB_ACCESS_REMOTE_WRITE ;
 int OCRDMA_QP_INB_RD ;
 int OCRDMA_QP_INB_WR ;

__attribute__((used)) static int ocrdma_to_ib_qp_acc_flags(int qp_cap_flags)
{
 int ib_qp_acc_flags = 0;

 if (qp_cap_flags & OCRDMA_QP_INB_WR)
  ib_qp_acc_flags |= IB_ACCESS_REMOTE_WRITE;
 if (qp_cap_flags & OCRDMA_QP_INB_RD)
  ib_qp_acc_flags |= IB_ACCESS_LOCAL_WRITE;
 return ib_qp_acc_flags;
}
