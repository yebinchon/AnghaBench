
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int drm_radeon_private_t ;
struct TYPE_9__ {int buffer; } ;
typedef TYPE_2__ drm_radeon_kcmd_buffer_t ;
struct TYPE_8__ {int count; int reghi; int reglo; } ;
struct TYPE_10__ {TYPE_1__ packet0; } ;
typedef TYPE_3__ drm_r300_cmd_header_t ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CP_PACKET0 (int,int) ;
 int DRM_ERROR (char*,int,int) ;
 int EINVAL ;
 int OUT_RING (int ) ;
 int OUT_RING_DRM_BUFFER (int ,int) ;
 int RING_LOCALS ;
 int drm_buffer_unprocessed (int ) ;
 scalar_t__ r300_check_range (int,int) ;
 int r300_emit_carefully_checked_packet0 (int *,TYPE_2__*,TYPE_3__) ;

__attribute__((used)) static __inline__ int r300_emit_packet0(drm_radeon_private_t *dev_priv,
     drm_radeon_kcmd_buffer_t *cmdbuf,
     drm_r300_cmd_header_t header)
{
 int reg;
 int sz;
 RING_LOCALS;

 sz = header.packet0.count;
 reg = (header.packet0.reghi << 8) | header.packet0.reglo;

 if (!sz)
  return 0;

 if (sz * 4 > drm_buffer_unprocessed(cmdbuf->buffer))
  return -EINVAL;

 if (reg + sz * 4 >= 0x10000) {
  DRM_ERROR("No such registers in hardware reg=%04x sz=%d\n", reg,
     sz);
  return -EINVAL;
 }

 if (r300_check_range(reg, sz)) {

  return r300_emit_carefully_checked_packet0(dev_priv, cmdbuf,
          header);
 }


 BEGIN_RING(1 + sz);
 OUT_RING(CP_PACKET0(reg, sz - 1));
 OUT_RING_DRM_BUFFER(cmdbuf->buffer, sz);
 ADVANCE_RING();

 return 0;
}
