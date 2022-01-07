
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct drm_file {int dummy; } ;
struct drm_buffer {int dummy; } ;
struct TYPE_4__ {int have_z_offset; } ;
typedef TYPE_1__ drm_radeon_private_t ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int DRM_ERROR (char*,...) ;
 int EINVAL ;
 int OUT_RING_REG (int ,int ) ;
 int RADEON_PP_CNTL ;
 int RADEON_PP_MISC ;
 int RADEON_PP_TXFILTER_0 ;
 int RADEON_PP_TXOFFSET_0 ;
 int RADEON_RB3D_COLOROFFSET ;
 int RADEON_RB3D_DEPTHOFFSET ;
 int RADEON_SE_TCL_STATE_FLUSH ;
 int RING_LOCALS ;
 int * drm_buffer_pointer_to_dword (struct drm_buffer*,int) ;
 int radeon_check_and_fixup_offset (TYPE_1__*,struct drm_file*,int *) ;

__attribute__((used)) static __inline__ int radeon_check_and_fixup_packets(drm_radeon_private_t *
           dev_priv,
           struct drm_file *file_priv,
           int id, struct drm_buffer *buf)
{
 u32 *data;
 switch (id) {

 case 146:
  data = drm_buffer_pointer_to_dword(buf,
   (RADEON_RB3D_DEPTHOFFSET - RADEON_PP_MISC) / 4);

  if (radeon_check_and_fixup_offset(dev_priv, file_priv, data)) {
   DRM_ERROR("Invalid depth buffer offset\n");
   return -EINVAL;
  }
  dev_priv->have_z_offset = 1;
  break;

 case 154:
  data = drm_buffer_pointer_to_dword(buf,
   (RADEON_RB3D_COLOROFFSET - RADEON_PP_CNTL) / 4);

  if (radeon_check_and_fixup_offset(dev_priv, file_priv, data)) {
   DRM_ERROR("Invalid colour buffer offset\n");
   return -EINVAL;
  }
  break;

 case 182:
 case 181:
 case 180:
 case 179:
 case 178:
 case 177:
  data = drm_buffer_pointer_to_dword(buf, 0);
  if (radeon_check_and_fixup_offset(dev_priv, file_priv, data)) {
   DRM_ERROR("Invalid R200 texture offset\n");
   return -EINVAL;
  }
  break;

 case 141:
 case 140:
 case 139:
  data = drm_buffer_pointer_to_dword(buf,
   (RADEON_PP_TXOFFSET_0 - RADEON_PP_TXFILTER_0) / 4);
  if (radeon_check_and_fixup_offset(dev_priv, file_priv, data)) {
   DRM_ERROR("Invalid R100 texture offset\n");
   return -EINVAL;
  }
  break;

 case 210:
 case 209:
 case 208:
 case 207:
 case 206:
 case 205:{
   int i;
   for (i = 0; i < 5; i++) {
    data = drm_buffer_pointer_to_dword(buf, i);
    if (radeon_check_and_fixup_offset(dev_priv,
          file_priv,
          data)) {
     DRM_ERROR
         ("Invalid R200 cubic texture offset\n");
     return -EINVAL;
    }
   }
   break;
  }

 case 150:
 case 149:
 case 148:{
   int i;
   for (i = 0; i < 5; i++) {
    data = drm_buffer_pointer_to_dword(buf, i);
    if (radeon_check_and_fixup_offset(dev_priv,
          file_priv,
          data)) {
     DRM_ERROR
         ("Invalid R100 cubic texture offset\n");
     return -EINVAL;
    }
   }
  }
  break;

 case 161:{
   RING_LOCALS;
   BEGIN_RING(2);
   OUT_RING_REG(RADEON_SE_TCL_STATE_FLUSH, 0);
   ADVANCE_RING();
  }
  break;

 case 138:
 case 136:
 case 132:
 case 147:
 case 145:
 case 137:
 case 129:
 case 134:
 case 133:
 case 135:
 case 157:
 case 156:
 case 155:
 case 128:
 case 130:
 case 131:
 case 202:
 case 201:
 case 200:
 case 199:
 case 198:
 case 197:
 case 196:
 case 195:
 case 166:
 case 162:
 case 158:
 case 221:
 case 163:
 case 164:
 case 188:
 case 187:
 case 186:
 case 185:
 case 184:
 case 183:
 case 159:
 case 220:
 case 204:
 case 217:
 case 175:
 case 174:
 case 172:
 case 171:
 case 170:
 case 169:
 case 168:
 case 173:
 case 167:
 case 216:
 case 215:
 case 214:
 case 213:
 case 212:
 case 211:
 case 144:
 case 143:
 case 142:
 case 176:
 case 165:
 case 153:
 case 152:
 case 151:
 case 203:
 case 219:
 case 218:
 case 222:
 case 194:
 case 193:
 case 192:
 case 191:
 case 190:
 case 189:
 case 160:

  break;

 default:
  DRM_ERROR("Unknown state packet ID %d\n", id);
  return -EINVAL;
 }

 return 0;
}
