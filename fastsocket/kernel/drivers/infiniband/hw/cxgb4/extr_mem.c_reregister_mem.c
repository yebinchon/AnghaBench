
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct c4iw_pd {int dummy; } ;
struct TYPE_2__ {int pbl_size; int pbl_addr; int stag; int len; int va_fbo; int zbva; int mw_bind_enable; int perms; int pdid; } ;
struct c4iw_mr {TYPE_1__ attr; } ;
struct c4iw_dev {int rdev; } ;


 int ENOMEM ;
 int FW_RI_STAG_NSMR ;
 int dereg_mem (int *,int ,int,int ) ;
 int finish_mem_reg (struct c4iw_mr*,int ) ;
 int write_tpt_entry (int *,int ,int *,int,int ,int ,int ,int ,int ,int ,int ,int,int,int ) ;

__attribute__((used)) static int reregister_mem(struct c4iw_dev *rhp, struct c4iw_pd *php,
     struct c4iw_mr *mhp, int shift, int npages)
{
 u32 stag;
 int ret;

 if (npages > mhp->attr.pbl_size)
  return -ENOMEM;

 stag = mhp->attr.stag;
 ret = write_tpt_entry(&rhp->rdev, 0, &stag, 1, mhp->attr.pdid,
         FW_RI_STAG_NSMR, mhp->attr.perms,
         mhp->attr.mw_bind_enable, mhp->attr.zbva,
         mhp->attr.va_fbo, mhp->attr.len, shift - 12,
         mhp->attr.pbl_size, mhp->attr.pbl_addr);
 if (ret)
  return ret;

 ret = finish_mem_reg(mhp, stag);
 if (ret)
  dereg_mem(&rhp->rdev, mhp->attr.stag, mhp->attr.pbl_size,
         mhp->attr.pbl_addr);

 return ret;
}
