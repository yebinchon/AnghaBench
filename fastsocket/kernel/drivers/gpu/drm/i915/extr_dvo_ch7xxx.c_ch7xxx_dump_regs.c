
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct intel_dvo_device {int dummy; } ;


 int CH7xxx_NUM_REGS ;
 int DRM_LOG_KMS (char*,int) ;
 int ch7xxx_readb (struct intel_dvo_device*,int,int*) ;

__attribute__((used)) static void ch7xxx_dump_regs(struct intel_dvo_device *dvo)
{
 int i;

 for (i = 0; i < CH7xxx_NUM_REGS; i++) {
  uint8_t val;
  if ((i % 8) == 0)
   DRM_LOG_KMS("\n %02X: ", i);
  ch7xxx_readb(dvo, i, &val);
  DRM_LOG_KMS("%02X ", val);
 }
}
