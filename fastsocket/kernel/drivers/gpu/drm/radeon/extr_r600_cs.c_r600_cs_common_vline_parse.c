
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int* ptr; } ;
struct radeon_cs_parser {int idx; TYPE_2__* rdev; TYPE_1__ ib; } ;
struct radeon_cs_packet {scalar_t__ type; scalar_t__ opcode; int idx; int count; } ;
struct radeon_crtc {int crtc_id; } ;
struct drm_mode_object {int dummy; } ;
struct drm_crtc {int enabled; } ;
struct TYPE_4__ {int ddev; } ;


 int DRM_ERROR (char*,...) ;
 int DRM_MODE_OBJECT_CRTC ;
 int EINVAL ;
 int PACKET2 (int ) ;
 scalar_t__ PACKET3_WAIT_REG_MEM ;
 int R600_CP_PACKET0_GET_REG (int) ;
 int R600_CP_PACKET0_REG_MASK ;
 scalar_t__ RADEON_PACKET_TYPE3 ;
 int RADEON_VLINE_STAT ;
 struct drm_mode_object* drm_mode_object_find (int ,int,int ) ;
 struct drm_crtc* obj_to_crtc (struct drm_mode_object*) ;
 int radeon_cs_packet_parse (struct radeon_cs_parser*,struct radeon_cs_packet*,int) ;
 int radeon_get_ib_value (struct radeon_cs_parser*,int) ;
 struct radeon_crtc* to_radeon_crtc (struct drm_crtc*) ;

int r600_cs_common_vline_parse(struct radeon_cs_parser *p,
          uint32_t *vline_start_end,
          uint32_t *vline_status)
{
 struct drm_mode_object *obj;
 struct drm_crtc *crtc;
 struct radeon_crtc *radeon_crtc;
 struct radeon_cs_packet p3reloc, wait_reg_mem;
 int crtc_id;
 int r;
 uint32_t header, h_idx, reg, wait_reg_mem_info;
 volatile uint32_t *ib;

 ib = p->ib.ptr;


 r = radeon_cs_packet_parse(p, &wait_reg_mem, p->idx);
 if (r)
  return r;


 if (wait_reg_mem.type != RADEON_PACKET_TYPE3 ||
     wait_reg_mem.opcode != PACKET3_WAIT_REG_MEM) {
  DRM_ERROR("vline wait missing WAIT_REG_MEM segment\n");
  return -EINVAL;
 }

 wait_reg_mem_info = radeon_get_ib_value(p, wait_reg_mem.idx + 1);

 if (wait_reg_mem_info & 0x10) {
  DRM_ERROR("vline WAIT_REG_MEM waiting on MEM instead of REG\n");
  return -EINVAL;
 }

 if (wait_reg_mem_info & 0x100) {
  DRM_ERROR("vline WAIT_REG_MEM waiting on PFP instead of ME\n");
  return -EINVAL;
 }

 if ((wait_reg_mem_info & 0x7) != 0x3) {
  DRM_ERROR("vline WAIT_REG_MEM function not equal\n");
  return -EINVAL;
 }
 if ((radeon_get_ib_value(p, wait_reg_mem.idx + 2) << 2) != vline_status[0]) {
  DRM_ERROR("vline WAIT_REG_MEM bad reg\n");
  return -EINVAL;
 }

 if (radeon_get_ib_value(p, wait_reg_mem.idx + 5) != RADEON_VLINE_STAT) {
  DRM_ERROR("vline WAIT_REG_MEM bad bit mask\n");
  return -EINVAL;
 }


 r = radeon_cs_packet_parse(p, &p3reloc, p->idx + wait_reg_mem.count + 2);
 if (r)
  return r;

 h_idx = p->idx - 2;
 p->idx += wait_reg_mem.count + 2;
 p->idx += p3reloc.count + 2;

 header = radeon_get_ib_value(p, h_idx);
 crtc_id = radeon_get_ib_value(p, h_idx + 2 + 7 + 1);
 reg = R600_CP_PACKET0_GET_REG(header);

 obj = drm_mode_object_find(p->rdev->ddev, crtc_id, DRM_MODE_OBJECT_CRTC);
 if (!obj) {
  DRM_ERROR("cannot find crtc %d\n", crtc_id);
  return -EINVAL;
 }
 crtc = obj_to_crtc(obj);
 radeon_crtc = to_radeon_crtc(crtc);
 crtc_id = radeon_crtc->crtc_id;

 if (!crtc->enabled) {

  ib[h_idx + 2] = PACKET2(0);
  ib[h_idx + 3] = PACKET2(0);
  ib[h_idx + 4] = PACKET2(0);
  ib[h_idx + 5] = PACKET2(0);
  ib[h_idx + 6] = PACKET2(0);
  ib[h_idx + 7] = PACKET2(0);
  ib[h_idx + 8] = PACKET2(0);
 } else if (reg == vline_start_end[0]) {
  header &= ~R600_CP_PACKET0_REG_MASK;
  header |= vline_start_end[crtc_id] >> 2;
  ib[h_idx] = header;
  ib[h_idx + 4] = vline_status[crtc_id] >> 2;
 } else {
  DRM_ERROR("unknown crtc reloc\n");
  return -EINVAL;
 }
 return 0;
}
