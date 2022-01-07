
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int track_flush; } ;
typedef TYPE_2__ drm_radeon_private_t ;
struct TYPE_10__ {int buffer; } ;
typedef TYPE_3__ drm_radeon_kcmd_buffer_t ;
struct TYPE_8__ {int count; int adrhi; int adrlo; } ;
struct TYPE_11__ {TYPE_1__ vpu; } ;
typedef TYPE_4__ drm_r300_cmd_header_t ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CP_PACKET0 (int ,int ) ;
 int CP_PACKET0_TABLE (int ,int) ;
 int EINVAL ;
 int OUT_RING (int ) ;
 int OUT_RING_DRM_BUFFER (int ,int) ;
 int OUT_RING_REG (int ,int) ;
 int R300_RB3D_DC_FLUSH ;
 int R300_RB3D_DSTCACHE_CTLSTAT ;
 int R300_VAP_PVS_STATE_FLUSH_REG ;
 int R300_VAP_PVS_UPLOAD_ADDRESS ;
 int R300_VAP_PVS_UPLOAD_DATA ;
 int RADEON_FLUSH_EMITED ;
 int RADEON_WAIT_3D_IDLECLEAN ;
 int RADEON_WAIT_UNTIL ;
 int RING_LOCALS ;
 int drm_buffer_unprocessed (int ) ;

__attribute__((used)) static __inline__ int r300_emit_vpu(drm_radeon_private_t *dev_priv,
        drm_radeon_kcmd_buffer_t *cmdbuf,
        drm_r300_cmd_header_t header)
{
 int sz;
 int addr;
 RING_LOCALS;

 sz = header.vpu.count;
 addr = (header.vpu.adrhi << 8) | header.vpu.adrlo;

 if (!sz)
  return 0;
 if (sz * 16 > drm_buffer_unprocessed(cmdbuf->buffer))
  return -EINVAL;



 BEGIN_RING(6);
 OUT_RING(CP_PACKET0(R300_RB3D_DSTCACHE_CTLSTAT, 0));
 OUT_RING(R300_RB3D_DC_FLUSH);
 OUT_RING(CP_PACKET0(RADEON_WAIT_UNTIL, 0));
 OUT_RING(RADEON_WAIT_3D_IDLECLEAN);
 OUT_RING(CP_PACKET0(R300_VAP_PVS_STATE_FLUSH_REG, 0));
 OUT_RING(0);
 ADVANCE_RING();

 dev_priv->track_flush |= RADEON_FLUSH_EMITED;

 BEGIN_RING(3 + sz * 4);
 OUT_RING_REG(R300_VAP_PVS_UPLOAD_ADDRESS, addr);
 OUT_RING(CP_PACKET0_TABLE(R300_VAP_PVS_UPLOAD_DATA, sz * 4 - 1));
 OUT_RING_DRM_BUFFER(cmdbuf->buffer, sz * 4);
 ADVANCE_RING();

 BEGIN_RING(2);
 OUT_RING(CP_PACKET0(R300_VAP_PVS_STATE_FLUSH_REG, 0));
 OUT_RING(0);
 ADVANCE_RING();

 return 0;
}
