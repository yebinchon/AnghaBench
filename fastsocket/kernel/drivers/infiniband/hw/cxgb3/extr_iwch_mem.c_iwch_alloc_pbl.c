
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pbl_size; int pbl_addr; } ;
struct iwch_mr {TYPE_2__ attr; TYPE_1__* rhp; } ;
struct TYPE_3__ {int rdev; } ;


 int ENOMEM ;
 int cxio_hal_pblpool_alloc (int *,int) ;

int iwch_alloc_pbl(struct iwch_mr *mhp, int npages)
{
 mhp->attr.pbl_addr = cxio_hal_pblpool_alloc(&mhp->rhp->rdev,
          npages << 3);

 if (!mhp->attr.pbl_addr)
  return -ENOMEM;

 mhp->attr.pbl_size = npages;

 return 0;
}
