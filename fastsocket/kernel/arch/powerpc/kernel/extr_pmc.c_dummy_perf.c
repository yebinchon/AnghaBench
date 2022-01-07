
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_2__ {scalar_t__ pmc_type; } ;


 int MMCR0_PMAO ;
 int MMCR0_PMXE ;
 int PMGC0_PMIE ;
 int PMRN_PMGC0 ;
 scalar_t__ PPC_PMC_IBM ;
 int SPRN_MMCR0 ;
 TYPE_1__* cur_cpu_spec ;
 int mfpmr (int ) ;
 int mfspr (int ) ;
 int mtpmr (int ,int) ;
 int mtspr (int ,int) ;

__attribute__((used)) static void dummy_perf(struct pt_regs *regs)
{






 mtspr(SPRN_MMCR0, mfspr(SPRN_MMCR0) & ~MMCR0_PMXE);

}
