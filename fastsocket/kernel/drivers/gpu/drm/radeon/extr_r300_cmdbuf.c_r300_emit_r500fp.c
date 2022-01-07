
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int drm_radeon_private_t ;
struct TYPE_7__ {int buffer; } ;
typedef TYPE_2__ drm_radeon_kcmd_buffer_t ;
struct TYPE_6__ {int count; int adrhi_flags; int adrlo; } ;
struct TYPE_8__ {TYPE_1__ r500fp; } ;
typedef TYPE_3__ drm_r300_cmd_header_t ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CP_PACKET0_TABLE (int ,int) ;
 int DRM_DEBUG (char*,int,int,int) ;
 int EINVAL ;
 int OUT_RING (int ) ;
 int OUT_RING_DRM_BUFFER (int ,int) ;
 int OUT_RING_REG (int ,int) ;
 int R500FP_CONSTANT_CLAMP ;
 int R500FP_CONSTANT_TYPE ;
 int R500_GA_US_VECTOR_DATA ;
 int R500_GA_US_VECTOR_INDEX ;
 int RING_LOCALS ;
 int drm_buffer_unprocessed (int ) ;

__attribute__((used)) static inline int r300_emit_r500fp(drm_radeon_private_t *dev_priv,
           drm_radeon_kcmd_buffer_t *cmdbuf,
           drm_r300_cmd_header_t header)
{
 int sz;
 int addr;
 int type;
 int isclamp;
 int stride;
 RING_LOCALS;

 sz = header.r500fp.count;

 addr = ((header.r500fp.adrhi_flags & 1) << 8) | header.r500fp.adrlo;

 type = !!(header.r500fp.adrhi_flags & R500FP_CONSTANT_TYPE);
 isclamp = !!(header.r500fp.adrhi_flags & R500FP_CONSTANT_CLAMP);

 addr |= (type << 16);
 addr |= (isclamp << 17);

 stride = type ? 4 : 6;

 DRM_DEBUG("r500fp %d %d type: %d\n", sz, addr, type);
 if (!sz)
  return 0;
 if (sz * stride * 4 > drm_buffer_unprocessed(cmdbuf->buffer))
  return -EINVAL;

 BEGIN_RING(3 + sz * stride);
 OUT_RING_REG(R500_GA_US_VECTOR_INDEX, addr);
 OUT_RING(CP_PACKET0_TABLE(R500_GA_US_VECTOR_DATA, sz * stride - 1));
 OUT_RING_DRM_BUFFER(cmdbuf->buffer, sz * stride);

 ADVANCE_RING();

 return 0;
}
