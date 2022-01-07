
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int phymem; int isar; int reset; } ;
struct TYPE_4__ {TYPE_1__ isurf; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int ISURF_IOMEM_SIZE ;
 int iounmap (int ) ;
 int release_mem_region (int ,int ) ;
 int release_region (int ,int) ;

__attribute__((used)) static void
release_io_isurf(struct IsdnCardState *cs)
{
 release_region(cs->hw.isurf.reset, 1);
 iounmap(cs->hw.isurf.isar);
 release_mem_region(cs->hw.isurf.phymem, ISURF_IOMEM_SIZE);
}
