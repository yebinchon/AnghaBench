
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r600_cs_track {int* cb_color_view; int* cb_color_bo_offset; int* cb_color_bo_mc; int* cb_color_frag_offset; int* cb_color_tile_offset; int* cb_color_mask; int is_resolve; int nsamples; int log_nsamples; int cb_target_mask; int cb_shader_mask; int cb_dirty; int db_bo_mc; int db_depth_info; int db_depth_view; int db_depth_size; int db_depth_control; int db_dirty; int htile_offset; int* vgt_strmout_bo_offset; int* vgt_strmout_bo_mc; int streamout_dirty; int sx_misc_kill_all_prims; int ** vgt_strmout_bo; scalar_t__* vgt_strmout_size; scalar_t__ htile_surface; int * htile_bo; scalar_t__ db_depth_size_idx; int * db_bo; int ** cb_color_tile_bo; int ** cb_color_frag_bo; int ** cb_color_bo; scalar_t__* cb_color_info; scalar_t__* cb_color_size_idx; scalar_t__* cb_color_size; scalar_t__* cb_color_base_last; int sq_config; } ;


 int DX9_CONSTS ;

__attribute__((used)) static void r600_cs_track_init(struct r600_cs_track *track)
{
 int i;


 track->sq_config = DX9_CONSTS;
 for (i = 0; i < 8; i++) {
  track->cb_color_base_last[i] = 0;
  track->cb_color_size[i] = 0;
  track->cb_color_size_idx[i] = 0;
  track->cb_color_info[i] = 0;
  track->cb_color_view[i] = 0xFFFFFFFF;
  track->cb_color_bo[i] = ((void*)0);
  track->cb_color_bo_offset[i] = 0xFFFFFFFF;
  track->cb_color_bo_mc[i] = 0xFFFFFFFF;
  track->cb_color_frag_bo[i] = ((void*)0);
  track->cb_color_frag_offset[i] = 0xFFFFFFFF;
  track->cb_color_tile_bo[i] = ((void*)0);
  track->cb_color_tile_offset[i] = 0xFFFFFFFF;
  track->cb_color_mask[i] = 0xFFFFFFFF;
 }
 track->is_resolve = 0;
 track->nsamples = 16;
 track->log_nsamples = 4;
 track->cb_target_mask = 0xFFFFFFFF;
 track->cb_shader_mask = 0xFFFFFFFF;
 track->cb_dirty = 1;
 track->db_bo = ((void*)0);
 track->db_bo_mc = 0xFFFFFFFF;

 track->db_depth_info = 7 | (1 << 25);
 track->db_depth_view = 0xFFFFC000;
 track->db_depth_size = 0xFFFFFFFF;
 track->db_depth_size_idx = 0;
 track->db_depth_control = 0xFFFFFFFF;
 track->db_dirty = 1;
 track->htile_bo = ((void*)0);
 track->htile_offset = 0xFFFFFFFF;
 track->htile_surface = 0;

 for (i = 0; i < 4; i++) {
  track->vgt_strmout_size[i] = 0;
  track->vgt_strmout_bo[i] = ((void*)0);
  track->vgt_strmout_bo_offset[i] = 0xFFFFFFFF;
  track->vgt_strmout_bo_mc[i] = 0xFFFFFFFF;
 }
 track->streamout_dirty = 1;
 track->sx_misc_kill_all_prims = 0;
}
