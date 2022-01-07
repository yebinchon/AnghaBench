
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct drm_file {int dummy; } ;
typedef int drm_radeon_private_t ;
struct TYPE_8__ {int buffer; } ;
typedef TYPE_2__ drm_radeon_kcmd_buffer_t ;
struct TYPE_7__ {scalar_t__ packet_id; } ;
struct TYPE_9__ {TYPE_1__ packet; } ;
typedef TYPE_3__ drm_radeon_cmd_header_t ;
struct TYPE_10__ {int len; int start; } ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CP_PACKET0 (int,int) ;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 int OUT_RING (int ) ;
 int OUT_RING_DRM_BUFFER (int ,int) ;
 int RADEON_MAX_STATE_PACKETS ;
 int RING_LOCALS ;
 int drm_buffer_unprocessed (int ) ;
 TYPE_6__* packet ;
 scalar_t__ radeon_check_and_fixup_packets (int *,struct drm_file*,int,int ) ;

__attribute__((used)) static int radeon_emit_packets(drm_radeon_private_t * dev_priv,
          struct drm_file *file_priv,
          drm_radeon_cmd_header_t header,
          drm_radeon_kcmd_buffer_t *cmdbuf)
{
 int id = (int)header.packet.packet_id;
 int sz, reg;
 RING_LOCALS;

 if (id >= RADEON_MAX_STATE_PACKETS)
  return -EINVAL;

 sz = packet[id].len;
 reg = packet[id].start;

 if (sz * sizeof(u32) > drm_buffer_unprocessed(cmdbuf->buffer)) {
  DRM_ERROR("Packet size provided larger than data provided\n");
  return -EINVAL;
 }

 if (radeon_check_and_fixup_packets(dev_priv, file_priv, id,
    cmdbuf->buffer)) {
  DRM_ERROR("Packet verification failed\n");
  return -EINVAL;
 }

 BEGIN_RING(sz + 1);
 OUT_RING(CP_PACKET0(reg, (sz - 1)));
 OUT_RING_DRM_BUFFER(cmdbuf->buffer, sz);
 ADVANCE_RING();

 return 0;
}
