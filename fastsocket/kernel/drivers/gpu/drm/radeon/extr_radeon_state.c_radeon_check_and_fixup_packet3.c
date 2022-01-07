
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct drm_file {int dummy; } ;
struct TYPE_6__ {int microcode_version; } ;
typedef TYPE_1__ drm_radeon_private_t ;
struct TYPE_7__ {int buffer; } ;
typedef TYPE_2__ drm_radeon_kcmd_buffer_t ;


 int DRM_ERROR (char*,...) ;
 int EINVAL ;
 int RADEON_CP_PACKET3 ;
 int RADEON_CP_PACKET_COUNT_MASK ;
 int RADEON_GMC_DST_PITCH_OFFSET_CNTL ;
 int RADEON_GMC_SRC_PITCH_OFFSET_CNTL ;

 int UCODE_R100 ;
 int UCODE_R200 ;
 int* drm_buffer_pointer_to_dword (int ,int) ;
 int drm_buffer_unprocessed (int ) ;
 int radeon_check_and_fixup_offset (TYPE_1__*,struct drm_file*,int*) ;

__attribute__((used)) static int radeon_check_and_fixup_packet3(drm_radeon_private_t *
       dev_priv,
       struct drm_file *file_priv,
       drm_radeon_kcmd_buffer_t *
       cmdbuf,
       unsigned int *cmdsz)
{
 u32 *cmd = drm_buffer_pointer_to_dword(cmdbuf->buffer, 0);
 u32 offset, narrays;
 int count, i, k;

 count = ((*cmd & RADEON_CP_PACKET_COUNT_MASK) >> 16);
 *cmdsz = 2 + count;

 if ((*cmd & 0xc0000000) != RADEON_CP_PACKET3) {
  DRM_ERROR("Not a type 3 packet\n");
  return -EINVAL;
 }

 if (4 * *cmdsz > drm_buffer_unprocessed(cmdbuf->buffer)) {
  DRM_ERROR("Packet size larger than size of data provided\n");
  return -EINVAL;
 }

 switch (*cmd & 0xff00) {


 case 141:
 case 139:
 case 140:
 case 128:
 case 129:
 case 142:




  break;

 case 133:
 case 131:
 case 132:
 case 143:

  if (dev_priv->microcode_version != UCODE_R200) {
   DRM_ERROR("Invalid 3d packet for r100-class chip\n");
   return -EINVAL;
  }
  break;

 case 138:

  if (count > 18) {
   DRM_ERROR("Too large payload in 3D_LOAD_VBPNTR (count=%d)\n",
      count);
   return -EINVAL;
  }


  cmd = drm_buffer_pointer_to_dword(cmdbuf->buffer, 1);

  narrays = *cmd & ~0xc000;
  k = 0;
  i = 2;
  while ((k < narrays) && (i < (count + 2))) {
   i++;
   cmd = drm_buffer_pointer_to_dword(cmdbuf->buffer, i);
   if (radeon_check_and_fixup_offset(dev_priv, file_priv,
         cmd)) {
    DRM_ERROR
        ("Invalid offset (k=%d i=%d) in 3D_LOAD_VBPNTR packet.\n",
         k, i);
    return -EINVAL;
   }
   k++;
   i++;
   if (k == narrays)
    break;

   cmd = drm_buffer_pointer_to_dword(cmdbuf->buffer, i);

   if (radeon_check_and_fixup_offset(dev_priv,
         file_priv, cmd))
   {
    DRM_ERROR
        ("Invalid offset (k=%d i=%d) in 3D_LOAD_VBPNTR packet.\n",
         k, i);
    return -EINVAL;
   }
   k++;
   i++;
  }

  if ((k != narrays) || (i != (count + 2))) {
   DRM_ERROR
       ("Malformed 3D_LOAD_VBPNTR packet (k=%d i=%d narrays=%d count+1=%d).\n",
         k, i, narrays, count + 1);
   return -EINVAL;
  }
  break;

 case 137:
  if (dev_priv->microcode_version != UCODE_R100) {
   DRM_ERROR("Invalid 3d packet for r200-class chip\n");
   return -EINVAL;
  }

  cmd = drm_buffer_pointer_to_dword(cmdbuf->buffer, 1);
  if (radeon_check_and_fixup_offset(dev_priv, file_priv, cmd)) {
    DRM_ERROR("Invalid rndr_gen_indx offset\n");
    return -EINVAL;
  }
  break;

 case 130:
  if (dev_priv->microcode_version != UCODE_R200) {
   DRM_ERROR("Invalid 3d packet for r100-class chip\n");
   return -EINVAL;
  }

  cmd = drm_buffer_pointer_to_dword(cmdbuf->buffer, 1);
  if ((*cmd & 0x8000ffff) != 0x80000810) {
   DRM_ERROR("Invalid indx_buffer reg address %08X\n", *cmd);
   return -EINVAL;
  }
  cmd = drm_buffer_pointer_to_dword(cmdbuf->buffer, 2);
  if (radeon_check_and_fixup_offset(dev_priv, file_priv, cmd)) {
   DRM_ERROR("Invalid indx_buffer offset is %08X\n", *cmd);
   return -EINVAL;
  }
  break;

 case 135:
 case 134:
 case 136:

  cmd = drm_buffer_pointer_to_dword(cmdbuf->buffer, 1);
  if (*cmd & (RADEON_GMC_SRC_PITCH_OFFSET_CNTL
         | RADEON_GMC_DST_PITCH_OFFSET_CNTL)) {
   u32 *cmd2 = drm_buffer_pointer_to_dword(cmdbuf->buffer, 2);
   offset = *cmd2 << 10;
   if (radeon_check_and_fixup_offset
       (dev_priv, file_priv, &offset)) {
    DRM_ERROR("Invalid first packet offset\n");
    return -EINVAL;
   }
   *cmd2 = (*cmd2 & 0xffc00000) | offset >> 10;
  }

  if ((*cmd & RADEON_GMC_SRC_PITCH_OFFSET_CNTL) &&
      (*cmd & RADEON_GMC_DST_PITCH_OFFSET_CNTL)) {
   u32 *cmd3 = drm_buffer_pointer_to_dword(cmdbuf->buffer, 3);
   offset = *cmd3 << 10;
   if (radeon_check_and_fixup_offset
       (dev_priv, file_priv, &offset)) {
    DRM_ERROR("Invalid second packet offset\n");
    return -EINVAL;
   }
   *cmd3 = (*cmd3 & 0xffc00000) | offset >> 10;
  }
  break;

 default:
  DRM_ERROR("Invalid packet type %x\n", *cmd & 0xff00);
  return -EINVAL;
 }

 return 0;
}
