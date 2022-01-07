
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef int drm_radeon_private_t ;
struct TYPE_7__ {int buffer; } ;
typedef TYPE_2__ drm_radeon_kcmd_buffer_t ;
struct TYPE_6__ {int count; int reghi; int reglo; } ;
struct TYPE_8__ {TYPE_1__ packet0; } ;
typedef TYPE_3__ drm_r300_cmd_header_t ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CP_PACKET0 (int,int) ;
 int DRM_ERROR (char*,int,int) ;
 int EINVAL ;


 int OUT_RING (int ) ;
 int OUT_RING_DRM_BUFFER (int ,int) ;
 int RING_LOCALS ;
 int * drm_buffer_pointer_to_dword (int ,int) ;
 int* r300_reg_flags ;
 int radeon_check_offset (int *,int ) ;

__attribute__((used)) static __inline__ int r300_emit_carefully_checked_packet0(drm_radeon_private_t *
         dev_priv,
         drm_radeon_kcmd_buffer_t
         * cmdbuf,
         drm_r300_cmd_header_t
         header)
{
 int reg;
 int sz;
 int i;
 u32 *value;
 RING_LOCALS;

 sz = header.packet0.count;
 reg = (header.packet0.reghi << 8) | header.packet0.reglo;

 if ((sz > 64) || (sz < 0)) {
  DRM_ERROR("Cannot emit more than 64 values at a time (reg=%04x sz=%d)\n",
    reg, sz);
  return -EINVAL;
 }

 for (i = 0; i < sz; i++) {
  switch (r300_reg_flags[(reg >> 2) + i]) {
  case 128:
   break;
  case 129:
   value = drm_buffer_pointer_to_dword(cmdbuf->buffer, i);
   if (!radeon_check_offset(dev_priv, *value)) {
    DRM_ERROR("Offset failed range check (reg=%04x sz=%d)\n",
      reg, sz);
    return -EINVAL;
   }
   break;
  default:
   DRM_ERROR("Register %04x failed check as flag=%02x\n",
    reg + i * 4, r300_reg_flags[(reg >> 2) + i]);
   return -EINVAL;
  }
 }

 BEGIN_RING(1 + sz);
 OUT_RING(CP_PACKET0(reg, sz - 1));
 OUT_RING_DRM_BUFFER(cmdbuf->buffer, sz);
 ADVANCE_RING();

 return 0;
}
