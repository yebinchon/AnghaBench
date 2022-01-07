
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int drm_via_private_t ;


 int HC_DUMMY ;
 int VIA_OUT_RING_QW (int ,int ) ;

__attribute__((used)) static inline uint32_t *via_align_buffer(drm_via_private_t *dev_priv,
      uint32_t * vb, int qw_count)
{
 for (; qw_count > 0; --qw_count)
  VIA_OUT_RING_QW(HC_DUMMY, HC_DUMMY);
 return vb;
}
