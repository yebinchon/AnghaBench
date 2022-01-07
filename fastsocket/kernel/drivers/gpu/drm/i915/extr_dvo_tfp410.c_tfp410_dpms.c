
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct intel_dvo_device {int dummy; } ;


 int TFP410_CTL_1 ;
 int TFP410_CTL_1_PD ;
 int tfp410_readb (struct intel_dvo_device*,int ,int *) ;
 int tfp410_writeb (struct intel_dvo_device*,int ,int ) ;

__attribute__((used)) static void tfp410_dpms(struct intel_dvo_device *dvo, bool enable)
{
 uint8_t ctl1;

 if (!tfp410_readb(dvo, TFP410_CTL_1, &ctl1))
  return;

 if (enable)
  ctl1 |= TFP410_CTL_1_PD;
 else
  ctl1 &= ~TFP410_CTL_1_PD;

 tfp410_writeb(dvo, TFP410_CTL_1, ctl1);
}
