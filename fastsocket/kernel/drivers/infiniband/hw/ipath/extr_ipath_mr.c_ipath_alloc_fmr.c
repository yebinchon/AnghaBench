
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mapsz; int access_flags; int max_segs; struct ipath_fmr** map; scalar_t__ offset; scalar_t__ length; scalar_t__ iova; scalar_t__ user_base; struct ib_pd* pd; int lkey; } ;
struct ib_fmr {int lkey; int rkey; } ;
struct ipath_fmr {TYPE_2__ mr; struct ib_fmr ibfmr; int page_shift; } ;
struct ib_pd {int device; } ;
struct ib_fmr_attr {int max_pages; int page_shift; } ;
struct TYPE_3__ {int lk_table; } ;


 int ENOMEM ;
 struct ib_fmr* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IPATH_SEGSZ ;
 int ipath_alloc_lkey (int *,TYPE_2__*) ;
 int kfree (struct ipath_fmr*) ;
 void* kmalloc (int,int ) ;
 TYPE_1__* to_idev (int ) ;

struct ib_fmr *ipath_alloc_fmr(struct ib_pd *pd, int mr_access_flags,
          struct ib_fmr_attr *fmr_attr)
{
 struct ipath_fmr *fmr;
 int m, i = 0;
 struct ib_fmr *ret;


 m = (fmr_attr->max_pages + IPATH_SEGSZ - 1) / IPATH_SEGSZ;
 fmr = kmalloc(sizeof *fmr + m * sizeof fmr->mr.map[0], GFP_KERNEL);
 if (!fmr)
  goto bail;


 for (; i < m; i++) {
  fmr->mr.map[i] = kmalloc(sizeof *fmr->mr.map[0],
      GFP_KERNEL);
  if (!fmr->mr.map[i])
   goto bail;
 }
 fmr->mr.mapsz = m;





 if (!ipath_alloc_lkey(&to_idev(pd->device)->lk_table, &fmr->mr))
  goto bail;
 fmr->ibfmr.rkey = fmr->ibfmr.lkey = fmr->mr.lkey;




 fmr->mr.pd = pd;
 fmr->mr.user_base = 0;
 fmr->mr.iova = 0;
 fmr->mr.length = 0;
 fmr->mr.offset = 0;
 fmr->mr.access_flags = mr_access_flags;
 fmr->mr.max_segs = fmr_attr->max_pages;
 fmr->page_shift = fmr_attr->page_shift;

 ret = &fmr->ibfmr;
 goto done;

bail:
 while (i)
  kfree(fmr->mr.map[--i]);
 kfree(fmr);
 ret = ERR_PTR(-ENOMEM);

done:
 return ret;
}
