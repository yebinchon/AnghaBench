
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int HIPZ_ACCESSCTRL_L_WRITE ;
 int HIPZ_ACCESSCTRL_MW_BIND ;
 int HIPZ_ACCESSCTRL_R_ATOMIC ;
 int HIPZ_ACCESSCTRL_R_READ ;
 int HIPZ_ACCESSCTRL_R_WRITE ;
 int IB_ACCESS_LOCAL_WRITE ;
 int IB_ACCESS_MW_BIND ;
 int IB_ACCESS_REMOTE_ATOMIC ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;

void ehca_mrmw_map_acl(int ib_acl,
         u32 *hipz_acl)
{
 *hipz_acl = 0;
 if (ib_acl & IB_ACCESS_REMOTE_READ)
  *hipz_acl |= HIPZ_ACCESSCTRL_R_READ;
 if (ib_acl & IB_ACCESS_REMOTE_WRITE)
  *hipz_acl |= HIPZ_ACCESSCTRL_R_WRITE;
 if (ib_acl & IB_ACCESS_REMOTE_ATOMIC)
  *hipz_acl |= HIPZ_ACCESSCTRL_R_ATOMIC;
 if (ib_acl & IB_ACCESS_LOCAL_WRITE)
  *hipz_acl |= HIPZ_ACCESSCTRL_L_WRITE;
 if (ib_acl & IB_ACCESS_MW_BIND)
  *hipz_acl |= HIPZ_ACCESSCTRL_MW_BIND;
}
