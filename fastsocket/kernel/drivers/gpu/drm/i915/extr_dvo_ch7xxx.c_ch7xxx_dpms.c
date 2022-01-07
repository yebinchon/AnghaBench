
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dvo_device {int dummy; } ;


 int CH7xxx_PM ;
 int CH7xxx_PM_DVIL ;
 int CH7xxx_PM_DVIP ;
 int CH7xxx_PM_FPD ;
 int ch7xxx_writeb (struct intel_dvo_device*,int ,int) ;

__attribute__((used)) static void ch7xxx_dpms(struct intel_dvo_device *dvo, bool enable)
{
 if (enable)
  ch7xxx_writeb(dvo, CH7xxx_PM, CH7xxx_PM_DVIL | CH7xxx_PM_DVIP);
 else
  ch7xxx_writeb(dvo, CH7xxx_PM, CH7xxx_PM_FPD);
}
