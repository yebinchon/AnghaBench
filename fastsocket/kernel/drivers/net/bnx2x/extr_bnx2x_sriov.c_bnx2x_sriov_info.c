
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x_sriov {int first_vf_in_pf; int pgsz; int stride; int offset; int nr_virtfn; int initial; int total; int ctrl; int cap; scalar_t__ nres; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_MAX_NUM_OF_VFS ;
 int BNX2X_MSG_IOV ;
 int BP_FUNC (struct bnx2x*) ;
 int BP_PATH (struct bnx2x*) ;
 int DP (int ,char*,int ,int,scalar_t__,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int ENODEV ;
 scalar_t__ GRC_CONFIG_REG_PF_INIT_VF ;
 int GRC_CR_PF_INIT_VF_PF_FIRST_VF_NUM_MASK ;
 scalar_t__ PCICFG_OFFSET ;
 int REG_RD (struct bnx2x*,scalar_t__) ;
 scalar_t__ bnx2x_sriov_pci_cfg_info (struct bnx2x*,struct bnx2x_sriov*) ;

__attribute__((used)) static int bnx2x_sriov_info(struct bnx2x *bp, struct bnx2x_sriov *iov)
{
 u32 val;





 if (bnx2x_sriov_pci_cfg_info(bp, iov))
  return -ENODEV;


 iov->nres = 0;


 val = REG_RD(bp, PCICFG_OFFSET + GRC_CONFIG_REG_PF_INIT_VF);
 iov->first_vf_in_pf = ((val & GRC_CR_PF_INIT_VF_PF_FIRST_VF_NUM_MASK)
          * 8) - (BNX2X_MAX_NUM_OF_VFS * BP_PATH(bp));

 DP(BNX2X_MSG_IOV,
    "IOV info[%d]: first vf %d, nres %d, cap 0x%x, ctrl 0x%x, total %d, initial %d, num vfs %d, offset %d, stride %d, page size 0x%x\n",
    BP_FUNC(bp),
    iov->first_vf_in_pf, iov->nres, iov->cap, iov->ctrl, iov->total,
    iov->initial, iov->nr_virtfn, iov->offset, iov->stride, iov->pgsz);

 return 0;
}
