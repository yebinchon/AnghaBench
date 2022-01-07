
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evergreen_cs_track {int* cb_color_bo_offset; int* cb_color_view; int* cb_color_slice; int cb_target_mask; int cb_shader_mask; int cb_dirty; int db_depth_slice; int db_depth_view; int db_depth_size; int db_depth_control; int db_z_info; int db_z_read_offset; int db_z_write_offset; int db_s_info; int db_s_read_offset; int db_s_write_offset; int db_dirty; int htile_offset; int* vgt_strmout_bo_offset; int streamout_dirty; int sx_misc_kill_all_prims; int ** vgt_strmout_bo; scalar_t__* vgt_strmout_size; scalar_t__ htile_surface; int * htile_bo; int * db_s_write_bo; int * db_s_read_bo; int * db_z_write_bo; int * db_z_read_bo; scalar_t__* cb_color_slice_idx; scalar_t__* cb_color_pitch; scalar_t__* cb_color_info; int ** cb_color_bo; scalar_t__* cb_color_fmask_slice; scalar_t__* cb_color_cmask_slice; int ** cb_color_cmask_bo; int ** cb_color_fmask_bo; } ;



__attribute__((used)) static void evergreen_cs_track_init(struct evergreen_cs_track *track)
{
 int i;

 for (i = 0; i < 8; i++) {
  track->cb_color_fmask_bo[i] = ((void*)0);
  track->cb_color_cmask_bo[i] = ((void*)0);
  track->cb_color_cmask_slice[i] = 0;
  track->cb_color_fmask_slice[i] = 0;
 }

 for (i = 0; i < 12; i++) {
  track->cb_color_bo[i] = ((void*)0);
  track->cb_color_bo_offset[i] = 0xFFFFFFFF;
  track->cb_color_info[i] = 0;
  track->cb_color_view[i] = 0xFFFFFFFF;
  track->cb_color_pitch[i] = 0;
  track->cb_color_slice[i] = 0xfffffff;
  track->cb_color_slice_idx[i] = 0;
 }
 track->cb_target_mask = 0xFFFFFFFF;
 track->cb_shader_mask = 0xFFFFFFFF;
 track->cb_dirty = 1;

 track->db_depth_slice = 0xffffffff;
 track->db_depth_view = 0xFFFFC000;
 track->db_depth_size = 0xFFFFFFFF;
 track->db_depth_control = 0xFFFFFFFF;
 track->db_z_info = 0xFFFFFFFF;
 track->db_z_read_offset = 0xFFFFFFFF;
 track->db_z_write_offset = 0xFFFFFFFF;
 track->db_z_read_bo = ((void*)0);
 track->db_z_write_bo = ((void*)0);
 track->db_s_info = 0xFFFFFFFF;
 track->db_s_read_offset = 0xFFFFFFFF;
 track->db_s_write_offset = 0xFFFFFFFF;
 track->db_s_read_bo = ((void*)0);
 track->db_s_write_bo = ((void*)0);
 track->db_dirty = 1;
 track->htile_bo = ((void*)0);
 track->htile_offset = 0xFFFFFFFF;
 track->htile_surface = 0;

 for (i = 0; i < 4; i++) {
  track->vgt_strmout_size[i] = 0;
  track->vgt_strmout_bo[i] = ((void*)0);
  track->vgt_strmout_bo_offset[i] = 0xFFFFFFFF;
 }
 track->streamout_dirty = 1;
 track->sx_misc_kill_all_prims = 0;
}
