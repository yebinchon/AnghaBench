
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_11__ {int track_flush; } ;
typedef TYPE_1__ drm_radeon_private_t ;
struct TYPE_12__ {int buffer; } ;
typedef TYPE_2__ drm_radeon_kcmd_buffer_t ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int DRM_ERROR (char*,...) ;
 int EINVAL ;
 int OUT_RING_DRM_BUFFER (int ,int) ;







 int RADEON_FLUSH_EMITED ;
 int RADEON_PURGE_EMITED ;

 int RING_LOCALS ;
 int* drm_buffer_pointer_to_dword (int ,int ) ;
 int drm_buffer_unprocessed (int ) ;
 int r300_emit_3d_load_vbpntr (TYPE_1__*,TYPE_2__*,int) ;
 int r300_emit_bitblt_multi (TYPE_1__*,TYPE_2__*) ;
 int r300_emit_draw_indx_2 (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static __inline__ int r300_emit_raw_packet3(drm_radeon_private_t *dev_priv,
         drm_radeon_kcmd_buffer_t *cmdbuf)
{
 u32 *header;
 int count;
 RING_LOCALS;

 if (4 > drm_buffer_unprocessed(cmdbuf->buffer))
  return -EINVAL;





 header = drm_buffer_pointer_to_dword(cmdbuf->buffer, 0);


 if ((*header >> 30) != 0x3) {
  DRM_ERROR("Not a packet3 header (0x%08x)\n", *header);
  return -EINVAL;
 }

 count = (*header >> 16) & 0x3fff;


 if ((count + 2) * 4 > drm_buffer_unprocessed(cmdbuf->buffer)) {
  DRM_ERROR
      ("Expected packet3 of length %d but have only %d bytes left\n",
       (count + 2) * 4, drm_buffer_unprocessed(cmdbuf->buffer));
  return -EINVAL;
 }


 switch (*header & 0xff00) {
 case 135:
  return r300_emit_3d_load_vbpntr(dev_priv, cmdbuf, *header);

 case 134:
  return r300_emit_bitblt_multi(dev_priv, cmdbuf);

 case 130:
  DRM_ERROR("packet3 INDX_BUFFER without preceding 3D_DRAW_INDX_2 is illegal.\n");
  return -EINVAL;
 case 133:

 case 131:

  dev_priv->track_flush &= ~(RADEON_FLUSH_EMITED |
        RADEON_PURGE_EMITED);
  break;
 case 132:


  dev_priv->track_flush &= ~(RADEON_FLUSH_EMITED |
        RADEON_PURGE_EMITED);
  return r300_emit_draw_indx_2(dev_priv, cmdbuf);
 case 128:
 case 129:

  break;
 default:
  DRM_ERROR("Unknown packet3 header (0x%08x)\n", *header);
  return -EINVAL;
 }

 BEGIN_RING(count + 2);
 OUT_RING_DRM_BUFFER(cmdbuf->buffer, count + 2);
 ADVANCE_RING();

 return 0;
}
