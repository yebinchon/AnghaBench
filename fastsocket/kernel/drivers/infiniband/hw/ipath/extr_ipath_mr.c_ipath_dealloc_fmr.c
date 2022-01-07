
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mapsz; struct ipath_fmr** map; } ;
struct ipath_fmr {TYPE_1__ mr; } ;
struct ib_fmr {int lkey; int device; } ;
struct TYPE_4__ {int lk_table; } ;


 int ipath_free_lkey (int *,int ) ;
 int kfree (struct ipath_fmr*) ;
 TYPE_2__* to_idev (int ) ;
 struct ipath_fmr* to_ifmr (struct ib_fmr*) ;

int ipath_dealloc_fmr(struct ib_fmr *ibfmr)
{
 struct ipath_fmr *fmr = to_ifmr(ibfmr);
 int i;

 ipath_free_lkey(&to_idev(ibfmr->device)->lk_table, ibfmr->lkey);
 i = fmr->mr.mapsz;
 while (i)
  kfree(fmr->mr.map[--i]);
 kfree(fmr);
 return 0;
}
