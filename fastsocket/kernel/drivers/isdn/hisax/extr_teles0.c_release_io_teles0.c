
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int phymem; int membase; scalar_t__ cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ teles0; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int TELES_IOMEM_SIZE ;
 int iounmap (int ) ;
 int release_mem_region (int ,int ) ;
 int release_region (scalar_t__,int) ;

__attribute__((used)) static void
release_io_teles0(struct IsdnCardState *cs)
{
 if (cs->hw.teles0.cfg_reg)
  release_region(cs->hw.teles0.cfg_reg, 8);
 iounmap(cs->hw.teles0.membase);
 release_mem_region(cs->hw.teles0.phymem, TELES_IOMEM_SIZE);
}
