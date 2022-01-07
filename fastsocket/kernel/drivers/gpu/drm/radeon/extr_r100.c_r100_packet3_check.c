
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct TYPE_6__ {int gpu_offset; } ;
struct radeon_cs_reloc {int robj; TYPE_2__ lobj; } ;
struct TYPE_5__ {int* ptr; } ;
struct radeon_cs_parser {int filp; TYPE_4__* rdev; scalar_t__ track; TYPE_1__ ib; } ;
struct radeon_cs_packet {int idx; int opcode; int count; } ;
struct r100_cs_track {int num_arrays; int max_indx; int vap_vf_cntl; int immd_dwords; void* vtx_size; TYPE_3__* arrays; } ;
struct TYPE_8__ {int hyperz_filp; } ;
struct TYPE_7__ {void* esize; int robj; } ;


 int DRM_ERROR (char*,...) ;
 int EINVAL ;
 int r100_cs_track_check (TYPE_4__*,struct r100_cs_track*) ;
 int r100_cs_track_check_pkt3_indx_buffer (struct radeon_cs_parser*,struct radeon_cs_packet*,int ) ;
 void* r100_get_vtx_size (int) ;
 int r100_packet3_load_vbpntr (struct radeon_cs_parser*,struct radeon_cs_packet*,unsigned int) ;
 int radeon_cs_dump_packet (struct radeon_cs_parser*,struct radeon_cs_packet*) ;
 int radeon_cs_packet_next_reloc (struct radeon_cs_parser*,struct radeon_cs_reloc**,int ) ;
 int radeon_get_ib_value (struct radeon_cs_parser*,unsigned int) ;

__attribute__((used)) static int r100_packet3_check(struct radeon_cs_parser *p,
         struct radeon_cs_packet *pkt)
{
 struct radeon_cs_reloc *reloc;
 struct r100_cs_track *track;
 unsigned idx;
 volatile uint32_t *ib;
 int r;

 ib = p->ib.ptr;
 idx = pkt->idx + 1;
 track = (struct r100_cs_track *)p->track;
 switch (pkt->opcode) {
 case 130:
  r = r100_packet3_load_vbpntr(p, pkt, idx);
  if (r)
   return r;
  break;
 case 129:
  r = radeon_cs_packet_next_reloc(p, &reloc, 0);
  if (r) {
   DRM_ERROR("No reloc for packet3 %d\n", pkt->opcode);
   radeon_cs_dump_packet(p, pkt);
   return r;
  }
  ib[idx+1] = radeon_get_ib_value(p, idx+1) + ((u32)reloc->lobj.gpu_offset);
  r = r100_cs_track_check_pkt3_indx_buffer(p, pkt, reloc->robj);
  if (r) {
   return r;
  }
  break;
 case 0x23:

  r = radeon_cs_packet_next_reloc(p, &reloc, 0);
  if (r) {
   DRM_ERROR("No reloc for packet3 %d\n", pkt->opcode);
   radeon_cs_dump_packet(p, pkt);
   return r;
  }
  ib[idx] = radeon_get_ib_value(p, idx) + ((u32)reloc->lobj.gpu_offset);
  track->num_arrays = 1;
  track->vtx_size = r100_get_vtx_size(radeon_get_ib_value(p, idx + 2));

  track->arrays[0].robj = reloc->robj;
  track->arrays[0].esize = track->vtx_size;

  track->max_indx = radeon_get_ib_value(p, idx+1);

  track->vap_vf_cntl = radeon_get_ib_value(p, idx+3);
  track->immd_dwords = pkt->count - 1;
  r = r100_cs_track_check(p->rdev, track);
  if (r)
   return r;
  break;
 case 136:
  if (((radeon_get_ib_value(p, idx + 1) >> 4) & 0x3) != 3) {
   DRM_ERROR("PRIM_WALK must be 3 for IMMD draw\n");
   return -EINVAL;
  }
  track->vtx_size = r100_get_vtx_size(radeon_get_ib_value(p, idx + 0));
  track->vap_vf_cntl = radeon_get_ib_value(p, idx + 1);
  track->immd_dwords = pkt->count - 1;
  r = r100_cs_track_check(p->rdev, track);
  if (r)
   return r;
  break;

 case 135:
  if (((radeon_get_ib_value(p, idx) >> 4) & 0x3) != 3) {
   DRM_ERROR("PRIM_WALK must be 3 for IMMD draw\n");
   return -EINVAL;
  }
  track->vap_vf_cntl = radeon_get_ib_value(p, idx);
  track->immd_dwords = pkt->count;
  r = r100_cs_track_check(p->rdev, track);
  if (r)
   return r;
  break;

 case 131:
  track->vap_vf_cntl = radeon_get_ib_value(p, idx);
  r = r100_cs_track_check(p->rdev, track);
  if (r)
   return r;
  break;

 case 133:
  track->vap_vf_cntl = radeon_get_ib_value(p, idx);
  r = r100_cs_track_check(p->rdev, track);
  if (r)
   return r;
  break;

 case 132:
  track->vap_vf_cntl = radeon_get_ib_value(p, idx + 1);
  r = r100_cs_track_check(p->rdev, track);
  if (r)
   return r;
  break;

 case 134:
  track->vap_vf_cntl = radeon_get_ib_value(p, idx + 1);
  r = r100_cs_track_check(p->rdev, track);
  if (r)
   return r;
  break;

 case 138:
 case 137:
  if (p->rdev->hyperz_filp != p->filp)
   return -EINVAL;
  break;
 case 128:
  break;
 default:
  DRM_ERROR("Packet3 opcode %x not supported\n", pkt->opcode);
  return -EINVAL;
 }
 return 0;
}
