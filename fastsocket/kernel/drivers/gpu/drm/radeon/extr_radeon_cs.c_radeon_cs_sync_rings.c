
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct radeon_cs_parser {int nrelocs; TYPE_3__* relocs; int ib; } ;
struct TYPE_6__ {TYPE_2__* robj; } ;
struct TYPE_4__ {int sync_obj; } ;
struct TYPE_5__ {TYPE_1__ tbo; } ;


 int radeon_ib_sync_to (int *,int ) ;

__attribute__((used)) static void radeon_cs_sync_rings(struct radeon_cs_parser *p)
{
 int i;

 for (i = 0; i < p->nrelocs; i++) {
  if (!p->relocs[i].robj)
   continue;

  radeon_ib_sync_to(&p->ib, p->relocs[i].robj->tbo.sync_obj);
 }
}
