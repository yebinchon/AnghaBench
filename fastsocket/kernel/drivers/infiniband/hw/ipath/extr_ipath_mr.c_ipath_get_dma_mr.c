
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_mr {int dummy; } ;
struct TYPE_2__ {int access_flags; } ;
struct ipath_mr {struct ib_mr ibmr; TYPE_1__ mr; } ;
struct ib_pd {int dummy; } ;


 int ENOMEM ;
 struct ib_mr* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct ipath_mr* kzalloc (int,int ) ;

struct ib_mr *ipath_get_dma_mr(struct ib_pd *pd, int acc)
{
 struct ipath_mr *mr;
 struct ib_mr *ret;

 mr = kzalloc(sizeof *mr, GFP_KERNEL);
 if (!mr) {
  ret = ERR_PTR(-ENOMEM);
  goto bail;
 }

 mr->mr.access_flags = acc;
 ret = &mr->ibmr;

bail:
 return ret;
}
