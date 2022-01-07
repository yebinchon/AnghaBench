
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r100_cs_track_texture {int compress_format; int roundup_h; int roundup_w; int tex_coord_type; int cpp; int txdepth; int num_levels; int height_11; int height; int width_11; int width; int use_pitch; int pitch; } ;


 int DRM_ERROR (char*,int ) ;

__attribute__((used)) static void r100_cs_track_texture_print(struct r100_cs_track_texture *t)
{
 DRM_ERROR("pitch                      %d\n", t->pitch);
 DRM_ERROR("use_pitch                  %d\n", t->use_pitch);
 DRM_ERROR("width                      %d\n", t->width);
 DRM_ERROR("width_11                   %d\n", t->width_11);
 DRM_ERROR("height                     %d\n", t->height);
 DRM_ERROR("height_11                  %d\n", t->height_11);
 DRM_ERROR("num levels                 %d\n", t->num_levels);
 DRM_ERROR("depth                      %d\n", t->txdepth);
 DRM_ERROR("bpp                        %d\n", t->cpp);
 DRM_ERROR("coordinate type            %d\n", t->tex_coord_type);
 DRM_ERROR("width round to power of 2  %d\n", t->roundup_w);
 DRM_ERROR("height round to power of 2 %d\n", t->roundup_h);
 DRM_ERROR("compress format            %d\n", t->compress_format);
}
