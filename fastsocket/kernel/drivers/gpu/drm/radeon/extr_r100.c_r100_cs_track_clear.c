
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct radeon_device {scalar_t__ family; } ;
struct TYPE_10__ {int pitch; int cpp; scalar_t__ offset; int * robj; } ;
struct TYPE_8__ {int * robj; } ;
struct r100_cs_track {int cb_dirty; int zb_dirty; int tex_dirty; int aa_dirty; int num_cb; int num_texture; int maxy; int separate_cube; int aaresolve; int z_enabled; int vtx_size; int immd_dwords; int num_arrays; int max_indx; TYPE_6__* textures; TYPE_5__* arrays; TYPE_4__ zb; TYPE_3__* cb; TYPE_2__ aa; } ;
struct TYPE_12__ {int pitch; int width; int height; int width_11; int height_11; int num_levels; int tex_coord_type; int txdepth; int cpp; int enabled; int lookup_disable; int roundup_w; int roundup_h; TYPE_1__* cube_info; int * robj; int compress_format; } ;
struct TYPE_11__ {int esize; int * robj; } ;
struct TYPE_9__ {int pitch; int cpp; scalar_t__ offset; int * robj; } ;
struct TYPE_7__ {int width; int height; scalar_t__ offset; int * robj; } ;


 scalar_t__ CHIP_R300 ;
 scalar_t__ CHIP_RS200 ;
 int R100_TRACK_COMP_NONE ;

void r100_cs_track_clear(struct radeon_device *rdev, struct r100_cs_track *track)
{
 unsigned i, face;

 track->cb_dirty = 1;
 track->zb_dirty = 1;
 track->tex_dirty = 1;
 track->aa_dirty = 1;

 if (rdev->family < CHIP_R300) {
  track->num_cb = 1;
  if (rdev->family <= CHIP_RS200)
   track->num_texture = 3;
  else
   track->num_texture = 6;
  track->maxy = 2048;
  track->separate_cube = 1;
 } else {
  track->num_cb = 4;
  track->num_texture = 16;
  track->maxy = 4096;
  track->separate_cube = 0;
  track->aaresolve = 0;
  track->aa.robj = ((void*)0);
 }

 for (i = 0; i < track->num_cb; i++) {
  track->cb[i].robj = ((void*)0);
  track->cb[i].pitch = 8192;
  track->cb[i].cpp = 16;
  track->cb[i].offset = 0;
 }
 track->z_enabled = 1;
 track->zb.robj = ((void*)0);
 track->zb.pitch = 8192;
 track->zb.cpp = 4;
 track->zb.offset = 0;
 track->vtx_size = 0x7F;
 track->immd_dwords = 0xFFFFFFFFUL;
 track->num_arrays = 11;
 track->max_indx = 0x00FFFFFFUL;
 for (i = 0; i < track->num_arrays; i++) {
  track->arrays[i].robj = ((void*)0);
  track->arrays[i].esize = 0x7F;
 }
 for (i = 0; i < track->num_texture; i++) {
  track->textures[i].compress_format = R100_TRACK_COMP_NONE;
  track->textures[i].pitch = 16536;
  track->textures[i].width = 16536;
  track->textures[i].height = 16536;
  track->textures[i].width_11 = 1 << 11;
  track->textures[i].height_11 = 1 << 11;
  track->textures[i].num_levels = 12;
  if (rdev->family <= CHIP_RS200) {
   track->textures[i].tex_coord_type = 0;
   track->textures[i].txdepth = 0;
  } else {
   track->textures[i].txdepth = 16;
   track->textures[i].tex_coord_type = 1;
  }
  track->textures[i].cpp = 64;
  track->textures[i].robj = ((void*)0);

  track->textures[i].enabled = 0;
  track->textures[i].lookup_disable = 0;
  track->textures[i].roundup_w = 1;
  track->textures[i].roundup_h = 1;
  if (track->separate_cube)
   for (face = 0; face < 5; face++) {
    track->textures[i].cube_info[face].robj = ((void*)0);
    track->textures[i].cube_info[face].width = 16536;
    track->textures[i].cube_info[face].height = 16536;
    track->textures[i].cube_info[face].offset = 0;
   }
 }
}
