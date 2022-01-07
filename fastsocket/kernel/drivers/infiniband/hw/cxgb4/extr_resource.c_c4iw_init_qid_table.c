
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int qid_table; } ;
struct TYPE_7__ {TYPE_2__* vr; } ;
struct c4iw_rdev {int qpmask; TYPE_4__ resource; TYPE_3__ lldi; } ;
struct TYPE_5__ {int start; int size; } ;
struct TYPE_6__ {TYPE_1__ qp; } ;


 int ENOMEM ;
 int c4iw_id_free (int *,int) ;
 scalar_t__ c4iw_id_table_alloc (int *,int,int,int,int ) ;

__attribute__((used)) static int c4iw_init_qid_table(struct c4iw_rdev *rdev)
{
 u32 i;

 if (c4iw_id_table_alloc(&rdev->resource.qid_table,
    rdev->lldi.vr->qp.start,
    rdev->lldi.vr->qp.size,
    rdev->lldi.vr->qp.size, 0))
  return -ENOMEM;

 for (i = rdev->lldi.vr->qp.start;
  i < rdev->lldi.vr->qp.start + rdev->lldi.vr->qp.size; i++)
  if (!(i & rdev->qpmask))
   c4iw_id_free(&rdev->resource.qid_table, i);
 return 0;
}
