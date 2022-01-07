
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IB_ACCESS_REMOTE_ATOMIC ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int MTHCA_QP_BIT_RAE ;
 int MTHCA_QP_BIT_RRE ;
 int MTHCA_QP_BIT_RWE ;

__attribute__((used)) static int to_ib_qp_access_flags(int mthca_flags)
{
 int ib_flags = 0;

 if (mthca_flags & MTHCA_QP_BIT_RRE)
  ib_flags |= IB_ACCESS_REMOTE_READ;
 if (mthca_flags & MTHCA_QP_BIT_RWE)
  ib_flags |= IB_ACCESS_REMOTE_WRITE;
 if (mthca_flags & MTHCA_QP_BIT_RAE)
  ib_flags |= IB_ACCESS_REMOTE_ATOMIC;

 return ib_flags;
}
