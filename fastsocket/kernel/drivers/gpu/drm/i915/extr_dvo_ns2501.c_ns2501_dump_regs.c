
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct intel_dvo_device {int dummy; } ;


 int DRM_LOG_KMS (char*,int ) ;
 int NS2501_FREQ_HI ;
 int NS2501_FREQ_LO ;
 int NS2501_REG8 ;
 int NS2501_REG9 ;
 int NS2501_REGC ;
 int ns2501_readb (struct intel_dvo_device*,int ,int *) ;

__attribute__((used)) static void ns2501_dump_regs(struct intel_dvo_device *dvo)
{
 uint8_t val;

 ns2501_readb(dvo, NS2501_FREQ_LO, &val);
 DRM_LOG_KMS("NS2501_FREQ_LO: 0x%02x\n", val);
 ns2501_readb(dvo, NS2501_FREQ_HI, &val);
 DRM_LOG_KMS("NS2501_FREQ_HI: 0x%02x\n", val);
 ns2501_readb(dvo, NS2501_REG8, &val);
 DRM_LOG_KMS("NS2501_REG8: 0x%02x\n", val);
 ns2501_readb(dvo, NS2501_REG9, &val);
 DRM_LOG_KMS("NS2501_REG9: 0x%02x\n", val);
 ns2501_readb(dvo, NS2501_REGC, &val);
 DRM_LOG_KMS("NS2501_REGC: 0x%02x\n", val);
}
