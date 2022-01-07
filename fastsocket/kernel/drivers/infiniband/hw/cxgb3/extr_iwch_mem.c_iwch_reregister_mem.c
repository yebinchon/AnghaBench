
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iwch_pd {int dummy; } ;
struct TYPE_2__ {int pbl_size; int pbl_addr; int stag; int len; int va_fbo; int zbva; int perms; int pdid; } ;
struct iwch_mr {TYPE_1__ attr; } ;
struct iwch_dev {int rdev; } ;


 int ENOMEM ;
 int cxio_dereg_mem (int *,int ,int,int ) ;
 scalar_t__ cxio_reregister_phys_mem (int *,int *,int ,int ,int ,int ,int ,int,int,int ) ;
 int iwch_finish_mem_reg (struct iwch_mr*,int ) ;

int iwch_reregister_mem(struct iwch_dev *rhp, struct iwch_pd *php,
     struct iwch_mr *mhp,
     int shift,
     int npages)
{
 u32 stag;
 int ret;


 if (npages > mhp->attr.pbl_size)
  return -ENOMEM;

 stag = mhp->attr.stag;
 if (cxio_reregister_phys_mem(&rhp->rdev,
       &stag, mhp->attr.pdid,
       mhp->attr.perms,
       mhp->attr.zbva,
       mhp->attr.va_fbo,
       mhp->attr.len,
       shift - 12,
       mhp->attr.pbl_size, mhp->attr.pbl_addr))
  return -ENOMEM;

 ret = iwch_finish_mem_reg(mhp, stag);
 if (ret)
  cxio_dereg_mem(&rhp->rdev, mhp->attr.stag, mhp->attr.pbl_size,
         mhp->attr.pbl_addr);

 return ret;
}
