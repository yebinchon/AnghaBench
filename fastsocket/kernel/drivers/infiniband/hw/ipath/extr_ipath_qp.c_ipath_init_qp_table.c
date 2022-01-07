
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int last; int max; int nmaps; TYPE_2__* map; int * table; } ;
struct ipath_ibdev {TYPE_1__ qp_table; } ;
struct TYPE_4__ {int * page; int n_free; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int BITS_PER_PAGE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int atomic_set (int *,int ) ;
 int * kzalloc (int,int ) ;

int ipath_init_qp_table(struct ipath_ibdev *idev, int size)
{
 int i;
 int ret;

 idev->qp_table.last = 1;
 idev->qp_table.max = size;
 idev->qp_table.nmaps = 1;
 idev->qp_table.table = kzalloc(size * sizeof(*idev->qp_table.table),
           GFP_KERNEL);
 if (idev->qp_table.table == ((void*)0)) {
  ret = -ENOMEM;
  goto bail;
 }

 for (i = 0; i < ARRAY_SIZE(idev->qp_table.map); i++) {
  atomic_set(&idev->qp_table.map[i].n_free, BITS_PER_PAGE);
  idev->qp_table.map[i].page = ((void*)0);
 }

 ret = 0;

bail:
 return ret;
}
