
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct si_pub {int boardtype; int boardvendor; int chippkg; int chiprev; int chip; } ;
struct si_info {int pcibus; struct bcma_bus* icbus; struct si_pub pub; } ;
struct bcma_device {int dummy; } ;
struct TYPE_6__ {int type; int vendor; } ;
struct TYPE_5__ {int pkg; int rev; int id; } ;
struct TYPE_4__ {struct bcma_device* core; } ;
struct bcma_bus {TYPE_3__ boardinfo; TYPE_2__ chipinfo; TYPE_1__ drv_cc; int host_pci; } ;


 int CC_CAP_PMU ;
 int CHIPCREGOFFS (int ) ;
 int ai_buscore_setup (struct si_info*,struct bcma_device*) ;
 int ai_get_cccaps (struct si_pub*) ;
 int bcma_write32 (struct bcma_device*,int ,int ) ;
 int gpiopulldown ;
 int gpiopullup ;
 int si_pmu_measure_alpclk (struct si_pub*) ;

__attribute__((used)) static struct si_info *ai_doattach(struct si_info *sii,
       struct bcma_bus *pbus)
{
 struct si_pub *sih = &sii->pub;
 struct bcma_device *cc;

 sii->icbus = pbus;
 sii->pcibus = pbus->host_pci;


 cc = pbus->drv_cc.core;

 sih->chip = pbus->chipinfo.id;
 sih->chiprev = pbus->chipinfo.rev;
 sih->chippkg = pbus->chipinfo.pkg;
 sih->boardvendor = pbus->boardinfo.vendor;
 sih->boardtype = pbus->boardinfo.type;

 if (!ai_buscore_setup(sii, cc))
  goto exit;


 bcma_write32(cc, CHIPCREGOFFS(gpiopullup), 0);
 bcma_write32(cc, CHIPCREGOFFS(gpiopulldown), 0);


 if (ai_get_cccaps(sih) & CC_CAP_PMU) {
  (void)si_pmu_measure_alpclk(sih);
 }

 return sii;

 exit:

 return ((void*)0);
}
