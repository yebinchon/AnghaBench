
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nr_segments; TYPE_1__* seg; } ;
struct blk_shadow {TYPE_2__ req; } ;
struct TYPE_3__ {int gref; } ;


 int gnttab_end_foreign_access (int ,int ,unsigned long) ;

__attribute__((used)) static void blkif_completion(struct blk_shadow *s)
{
 int i;
 for (i = 0; i < s->req.nr_segments; i++)
  gnttab_end_foreign_access(s->req.seg[i].gref, 0, 0UL);
}
