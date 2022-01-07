
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_4__ {int tiling_flags; int gpu_offset; } ;
struct radeon_cs_reloc {TYPE_2__ lobj; int robj; } ;
struct TYPE_3__ {int* ptr; } ;
struct radeon_cs_parser {int cs_flags; int dev; TYPE_1__ ib; scalar_t__ track; } ;
struct r600_cs_track {int sq_config; int db_depth_control; int db_dirty; int db_depth_info; int db_depth_view; int db_depth_size; int db_depth_size_idx; int vgt_strmout_en; int streamout_dirty; int vgt_strmout_buffer_en; int* vgt_strmout_bo_offset; int* vgt_strmout_bo_mc; int* vgt_strmout_size; int cb_target_mask; int cb_dirty; int cb_shader_mask; int log_nsamples; int nsamples; int is_resolve; int* cb_color_info; int* cb_color_view; int* cb_color_size; int* cb_color_size_idx; int* cb_color_base_last; int* cb_color_frag_offset; int* cb_color_bo_offset; int* cb_color_tile_offset; int* cb_color_mask; int* cb_color_bo_mc; int db_offset; int db_bo_mc; int htile_offset; int htile_surface; int sx_misc_kill_all_prims; int htile_bo; int db_bo; int * cb_color_bo; int * cb_color_tile_bo; int * cb_color_frag_bo; int * vgt_strmout_bo; } ;


 int ARRAY_SIZE (int*) ;
 int C_028010_ARRAY_MODE ;



 int EINVAL ;
 int G_0280A0_TILE_MODE (int) ;
 int G_028808_SPECIAL_OP (int) ;
 int G_028C04_MSAA_NUM_SAMPLES (int) ;
 int RADEON_CS_KEEP_TILING_FLAGS ;
 int RADEON_TILING_MACRO ;
 int RADEON_TILING_MICRO ;
 int S_028010_ARRAY_MODE (int ) ;
 int S_0280A0_ARRAY_MODE (int ) ;
 int V_028010_ARRAY_1D_TILED_THIN1 ;
 int V_028010_ARRAY_2D_TILED_THIN1 ;
 int V_0280A0_ARRAY_1D_TILED_THIN1 ;
 int V_0280A0_ARRAY_2D_TILED_THIN1 ;
 int V_028808_SPECIAL_RESOLVE_BOX ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*,int,...) ;
 int r600_nomm ;
 int* r600_reg_safe_bm ;
 int radeon_cs_packet_next_is_pkt3_nop (struct radeon_cs_parser*) ;
 int radeon_cs_packet_next_reloc (struct radeon_cs_parser*,struct radeon_cs_reloc**,int ) ;
 int radeon_get_ib_value (struct radeon_cs_parser*,int) ;

__attribute__((used)) static int r600_cs_check_reg(struct radeon_cs_parser *p, u32 reg, u32 idx)
{
 struct r600_cs_track *track = (struct r600_cs_track *)p->track;
 struct radeon_cs_reloc *reloc;
 u32 m, i, tmp, *ib;
 int r;

 i = (reg >> 7);
 if (i >= ARRAY_SIZE(r600_reg_safe_bm)) {
  dev_warn(p->dev, "forbidden register 0x%08x at %d\n", reg, idx);
  return -EINVAL;
 }
 m = 1 << ((reg >> 2) & 31);
 if (!(r600_reg_safe_bm[i] & m))
  return 0;
 ib = p->ib.ptr;
 switch (reg) {




 case 203:
 case 266:
 case 201:
 case 264:
 case 197:
 case 260:
 case 200:
 case 263:
 case 202:
 case 265:
 case 198:
 case 261:
 case 196:
 case 259:
 case 199:
 case 262:
 case 195:

  tmp =radeon_get_ib_value(p, idx);
  ib[idx] = 0;
  break;
 case 143:
  track->sq_config = radeon_get_ib_value(p, idx);
  break;
 case 205:
  track->db_depth_control = radeon_get_ib_value(p, idx);
  track->db_dirty = 1;
  break;
 case 256:
  if (!(p->cs_flags & RADEON_CS_KEEP_TILING_FLAGS) &&
      radeon_cs_packet_next_is_pkt3_nop(p)) {
   r = radeon_cs_packet_next_reloc(p, &reloc, r600_nomm);
   if (r) {
    dev_warn(p->dev, "bad SET_CONTEXT_REG "
      "0x%04X\n", reg);
    return -EINVAL;
   }
   track->db_depth_info = radeon_get_ib_value(p, idx);
   ib[idx] &= C_028010_ARRAY_MODE;
   track->db_depth_info &= C_028010_ARRAY_MODE;
   if (reloc->lobj.tiling_flags & RADEON_TILING_MACRO) {
    ib[idx] |= S_028010_ARRAY_MODE(V_028010_ARRAY_2D_TILED_THIN1);
    track->db_depth_info |= S_028010_ARRAY_MODE(V_028010_ARRAY_2D_TILED_THIN1);
   } else {
    ib[idx] |= S_028010_ARRAY_MODE(V_028010_ARRAY_1D_TILED_THIN1);
    track->db_depth_info |= S_028010_ARRAY_MODE(V_028010_ARRAY_1D_TILED_THIN1);
   }
  } else {
   track->db_depth_info = radeon_get_ib_value(p, idx);
  }
  track->db_dirty = 1;
  break;
 case 257:
  track->db_depth_view = radeon_get_ib_value(p, idx);
  track->db_dirty = 1;
  break;
 case 258:
  track->db_depth_size = radeon_get_ib_value(p, idx);
  track->db_depth_size_idx = idx;
  track->db_dirty = 1;
  break;
 case 194:
  track->vgt_strmout_en = radeon_get_ib_value(p, idx);
  track->streamout_dirty = 1;
  break;
 case 193:
  track->vgt_strmout_buffer_en = radeon_get_ib_value(p, idx);
  track->streamout_dirty = 1;
  break;
 case 135:
 case 134:
 case 133:
 case 132:
  r = radeon_cs_packet_next_reloc(p, &reloc, r600_nomm);
  if (r) {
   dev_warn(p->dev, "bad SET_CONTEXT_REG "
     "0x%04X\n", reg);
   return -EINVAL;
  }
  tmp = (reg - 135) / 16;
  track->vgt_strmout_bo_offset[tmp] = radeon_get_ib_value(p, idx) << 8;
  ib[idx] += (u32)((reloc->lobj.gpu_offset >> 8) & 0xffffffff);
  track->vgt_strmout_bo[tmp] = reloc->robj;
  track->vgt_strmout_bo_mc[tmp] = reloc->lobj.gpu_offset;
  track->streamout_dirty = 1;
  break;
 case 131:
 case 130:
 case 129:
 case 128:
  tmp = (reg - 131) / 16;

  track->vgt_strmout_size[tmp] = radeon_get_ib_value(p, idx) * 4;
  track->streamout_dirty = 1;
  break;
 case 270:
  r = radeon_cs_packet_next_reloc(p, &reloc, r600_nomm);
  if (r) {
   dev_warn(p->dev, "missing reloc for CP_COHER_BASE "
     "0x%04X\n", reg);
   return -EINVAL;
  }
  ib[idx] += (u32)((reloc->lobj.gpu_offset >> 8) & 0xffffffff);
  break;
 case 207:
  track->cb_target_mask = radeon_get_ib_value(p, idx);
  track->cb_dirty = 1;
  break;
 case 206:
  track->cb_shader_mask = radeon_get_ib_value(p, idx);
  break;
 case 192:
  tmp = G_028C04_MSAA_NUM_SAMPLES(radeon_get_ib_value(p, idx));
  track->log_nsamples = tmp;
  track->nsamples = 1 << tmp;
  track->cb_dirty = 1;
  break;
 case 204:
  tmp = G_028808_SPECIAL_OP(radeon_get_ib_value(p, idx));
  track->is_resolve = tmp == V_028808_SPECIAL_RESOLVE_BOX;
  track->cb_dirty = 1;
  break;
 case 239:
 case 238:
 case 237:
 case 236:
 case 235:
 case 234:
 case 233:
 case 232:
  if (!(p->cs_flags & RADEON_CS_KEEP_TILING_FLAGS) &&
       radeon_cs_packet_next_is_pkt3_nop(p)) {
   r = radeon_cs_packet_next_reloc(p, &reloc, r600_nomm);
   if (r) {
    dev_err(p->dev, "bad SET_CONTEXT_REG 0x%04X\n", reg);
    return -EINVAL;
   }
   tmp = (reg - 239) / 4;
   track->cb_color_info[tmp] = radeon_get_ib_value(p, idx);
   if (reloc->lobj.tiling_flags & RADEON_TILING_MACRO) {
    ib[idx] |= S_0280A0_ARRAY_MODE(V_0280A0_ARRAY_2D_TILED_THIN1);
    track->cb_color_info[tmp] |= S_0280A0_ARRAY_MODE(V_0280A0_ARRAY_2D_TILED_THIN1);
   } else if (reloc->lobj.tiling_flags & RADEON_TILING_MICRO) {
    ib[idx] |= S_0280A0_ARRAY_MODE(V_0280A0_ARRAY_1D_TILED_THIN1);
    track->cb_color_info[tmp] |= S_0280A0_ARRAY_MODE(V_0280A0_ARRAY_1D_TILED_THIN1);
   }
  } else {
   tmp = (reg - 239) / 4;
   track->cb_color_info[tmp] = radeon_get_ib_value(p, idx);
  }
  track->cb_dirty = 1;
  break;
 case 247:
 case 246:
 case 245:
 case 244:
 case 243:
 case 242:
 case 241:
 case 240:
  tmp = (reg - 247) / 4;
  track->cb_color_view[tmp] = radeon_get_ib_value(p, idx);
  track->cb_dirty = 1;
  break;
 case 255:
 case 254:
 case 253:
 case 252:
 case 251:
 case 250:
 case 249:
 case 248:
  tmp = (reg - 255) / 4;
  track->cb_color_size[tmp] = radeon_get_ib_value(p, idx);
  track->cb_color_size_idx[tmp] = idx;
  track->cb_dirty = 1;
  break;
 case 223:
 case 222:
 case 221:
 case 220:
 case 219:
 case 218:
 case 217:
 case 216:
  tmp = (reg - 223) / 4;
  if (!radeon_cs_packet_next_is_pkt3_nop(p)) {
   if (!track->cb_color_base_last[tmp]) {
    dev_err(p->dev, "Broken old userspace ? no cb_color0_base supplied before trying to write 0x%08X\n", reg);
    return -EINVAL;
   }
   track->cb_color_frag_bo[tmp] = track->cb_color_bo[tmp];
   track->cb_color_frag_offset[tmp] = track->cb_color_bo_offset[tmp];
   ib[idx] = track->cb_color_base_last[tmp];
  } else {
   r = radeon_cs_packet_next_reloc(p, &reloc, r600_nomm);
   if (r) {
    dev_err(p->dev, "bad SET_CONTEXT_REG 0x%04X\n", reg);
    return -EINVAL;
   }
   track->cb_color_frag_bo[tmp] = reloc->robj;
   track->cb_color_frag_offset[tmp] = (u64)ib[idx] << 8;
   ib[idx] += (u32)((reloc->lobj.gpu_offset >> 8) & 0xffffffff);
  }
  if (G_0280A0_TILE_MODE(track->cb_color_info[tmp])) {
   track->cb_dirty = 1;
  }
  break;
 case 231:
 case 230:
 case 229:
 case 228:
 case 227:
 case 226:
 case 225:
 case 224:
  tmp = (reg - 231) / 4;
  if (!radeon_cs_packet_next_is_pkt3_nop(p)) {
   if (!track->cb_color_base_last[tmp]) {
    dev_err(p->dev, "Broken old userspace ? no cb_color0_base supplied before trying to write 0x%08X\n", reg);
    return -EINVAL;
   }
   track->cb_color_tile_bo[tmp] = track->cb_color_bo[tmp];
   track->cb_color_tile_offset[tmp] = track->cb_color_bo_offset[tmp];
   ib[idx] = track->cb_color_base_last[tmp];
  } else {
   r = radeon_cs_packet_next_reloc(p, &reloc, r600_nomm);
   if (r) {
    dev_err(p->dev, "bad SET_CONTEXT_REG 0x%04X\n", reg);
    return -EINVAL;
   }
   track->cb_color_tile_bo[tmp] = reloc->robj;
   track->cb_color_tile_offset[tmp] = (u64)ib[idx] << 8;
   ib[idx] += (u32)((reloc->lobj.gpu_offset >> 8) & 0xffffffff);
  }
  if (G_0280A0_TILE_MODE(track->cb_color_info[tmp])) {
   track->cb_dirty = 1;
  }
  break;
 case 215:
 case 214:
 case 213:
 case 212:
 case 211:
 case 210:
 case 209:
 case 208:
  tmp = (reg - 215) / 4;
  track->cb_color_mask[tmp] = radeon_get_ib_value(p, idx);
  if (G_0280A0_TILE_MODE(track->cb_color_info[tmp])) {
   track->cb_dirty = 1;
  }
  break;
 case 278:
 case 277:
 case 276:
 case 275:
 case 274:
 case 273:
 case 272:
 case 271:
  r = radeon_cs_packet_next_reloc(p, &reloc, r600_nomm);
  if (r) {
   dev_warn(p->dev, "bad SET_CONTEXT_REG "
     "0x%04X\n", reg);
   return -EINVAL;
  }
  tmp = (reg - 278) / 4;
  track->cb_color_bo_offset[tmp] = radeon_get_ib_value(p, idx) << 8;
  ib[idx] += (u32)((reloc->lobj.gpu_offset >> 8) & 0xffffffff);
  track->cb_color_base_last[tmp] = ib[idx];
  track->cb_color_bo[tmp] = reloc->robj;
  track->cb_color_bo_mc[tmp] = reloc->lobj.gpu_offset;
  track->cb_dirty = 1;
  break;
 case 269:
  r = radeon_cs_packet_next_reloc(p, &reloc, r600_nomm);
  if (r) {
   dev_warn(p->dev, "bad SET_CONTEXT_REG "
     "0x%04X\n", reg);
   return -EINVAL;
  }
  track->db_offset = radeon_get_ib_value(p, idx) << 8;
  ib[idx] += (u32)((reloc->lobj.gpu_offset >> 8) & 0xffffffff);
  track->db_bo = reloc->robj;
  track->db_bo_mc = reloc->lobj.gpu_offset;
  track->db_dirty = 1;
  break;
 case 268:
  r = radeon_cs_packet_next_reloc(p, &reloc, r600_nomm);
  if (r) {
   dev_warn(p->dev, "bad SET_CONTEXT_REG "
     "0x%04X\n", reg);
   return -EINVAL;
  }
  track->htile_offset = radeon_get_ib_value(p, idx) << 8;
  ib[idx] += (u32)((reloc->lobj.gpu_offset >> 8) & 0xffffffff);
  track->htile_bo = reloc->robj;
  track->db_dirty = 1;
  break;
 case 267:
  track->htile_surface = radeon_get_ib_value(p, idx);

  ib[idx] |= 3;
  track->db_dirty = 1;
  break;
 case 141:
 case 142:
 case 138:
 case 140:
 case 139:
 case 191:
 case 190:
 case 183:
 case 182:
 case 181:
 case 180:
 case 179:
 case 178:
 case 177:
 case 176:
 case 189:
 case 188:
 case 187:
 case 186:
 case 185:
 case 184:
 case 175:
 case 174:
 case 167:
 case 166:
 case 165:
 case 164:
 case 163:
 case 162:
 case 161:
 case 160:
 case 173:
 case 172:
 case 171:
 case 170:
 case 169:
 case 168:
 case 159:
 case 158:
 case 151:
 case 150:
 case 149:
 case 148:
 case 147:
 case 146:
 case 145:
 case 144:
 case 157:
 case 156:
 case 155:
 case 154:
 case 153:
 case 152:
  r = radeon_cs_packet_next_reloc(p, &reloc, r600_nomm);
  if (r) {
   dev_warn(p->dev, "bad SET_CONTEXT_REG "
     "0x%04X\n", reg);
   return -EINVAL;
  }
  ib[idx] += (u32)((reloc->lobj.gpu_offset >> 8) & 0xffffffff);
  break;
 case 137:
  r = radeon_cs_packet_next_reloc(p, &reloc, r600_nomm);
  if (r) {
   dev_warn(p->dev, "bad SET_CONFIG_REG "
     "0x%04X\n", reg);
   return -EINVAL;
  }
  ib[idx] += (u32)((reloc->lobj.gpu_offset >> 8) & 0xffffffff);
  break;
 case 136:
  track->sx_misc_kill_all_prims = (radeon_get_ib_value(p, idx) & 0x1) != 0;
  break;
 default:
  dev_warn(p->dev, "forbidden register 0x%08x at %d\n", reg, idx);
  return -EINVAL;
 }
 return 0;
}
