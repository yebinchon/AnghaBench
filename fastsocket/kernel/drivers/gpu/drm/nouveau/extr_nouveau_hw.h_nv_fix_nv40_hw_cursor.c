
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_device {int dummy; } ;


 int NVReadRAMDAC (struct drm_device*,int,int ) ;
 int NVWriteRAMDAC (struct drm_device*,int,int ,int ) ;
 int NV_PRAMDAC_CU_START_POS ;

__attribute__((used)) static inline void
nv_fix_nv40_hw_cursor(struct drm_device *dev, int head)
{





 uint32_t curpos = NVReadRAMDAC(dev, head, NV_PRAMDAC_CU_START_POS);
 NVWriteRAMDAC(dev, head, NV_PRAMDAC_CU_START_POS, curpos);
}
