
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int aapl_bus_id; int node; scalar_t__ kauai_fcr; scalar_t__ mediabay; int irq; scalar_t__* timings; } ;
typedef TYPE_1__ pmac_ide_hwif_t ;
struct TYPE_5__ {int (* feature_call ) (int ,int ,int ,int ) ;} ;


 int KAUAI_FCR_UATA_ENABLE ;
 int KAUAI_FCR_UATA_RESET_N ;
 int PMAC_FTR_IDE_ENABLE ;
 int disable_irq (int ) ;
 TYPE_2__ ppc_md ;
 int readl (scalar_t__) ;
 int stub1 (int ,int ,int ,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int pmac_ide_do_suspend(pmac_ide_hwif_t *pmif)
{

 pmif->timings[0] = 0;
 pmif->timings[1] = 0;

 disable_irq(pmif->irq);


 if (pmif->mediabay)
  return 0;


 if (pmif->kauai_fcr) {
  u32 fcr = readl(pmif->kauai_fcr);
  fcr &= ~(KAUAI_FCR_UATA_RESET_N | KAUAI_FCR_UATA_ENABLE);
  writel(fcr, pmif->kauai_fcr);
 }


 ppc_md.feature_call(PMAC_FTR_IDE_ENABLE, pmif->node, pmif->aapl_bus_id,
       0);

 return 0;
}
