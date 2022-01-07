
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int drm_via_private_t ;


 int SetReg2DAGP (int,int) ;
 int * via_get_dma (int *) ;

__attribute__((used)) static inline void via_dummy_bitblt(drm_via_private_t *dev_priv)
{
 uint32_t *vb = via_get_dma(dev_priv);
 SetReg2DAGP(0x0C, (0 | (0 << 16)));
 SetReg2DAGP(0x10, 0 | (0 << 16));
 SetReg2DAGP(0x0, 0x1 | 0x2000 | 0xAA000000);
}
