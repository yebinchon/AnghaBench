
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct v4l2_dv_preset_info TYPE_1__ ;


typedef size_t u32 ;
typedef int u16 ;
struct v4l2_dv_enum_preset {size_t preset; int name; int height; int width; } ;
struct v4l2_dv_preset_info {int width; int height; char const* name; } ;


 size_t ARRAY_SIZE (TYPE_1__ const*) ;
 int EINVAL ;
 int strlcpy (int ,char const*,int) ;

int v4l_fill_dv_preset_info(u32 preset, struct v4l2_dv_enum_preset *info)
{
 static const struct v4l2_dv_preset_info {
  u16 width;
  u16 height;
  const char *name;
 } dv_presets[] = {
  { 0, 0, "Invalid" },
  { 720, 480, "480p@59.94" },
  { 720, 576, "576p@50" },
  { 1280, 720, "720p@24" },
  { 1280, 720, "720p@25" },
  { 1280, 720, "720p@30" },
  { 1280, 720, "720p@50" },
  { 1280, 720, "720p@59.94" },
  { 1280, 720, "720p@60" },
  { 1920, 1080, "1080i@29.97" },
  { 1920, 1080, "1080i@30" },
  { 1920, 1080, "1080i@25" },
  { 1920, 1080, "1080i@50" },
  { 1920, 1080, "1080i@60" },
  { 1920, 1080, "1080p@24" },
  { 1920, 1080, "1080p@25" },
  { 1920, 1080, "1080p@30" },
  { 1920, 1080, "1080p@50" },
  { 1920, 1080, "1080p@60" },
 };

 if (info == ((void*)0) || preset >= ARRAY_SIZE(dv_presets))
  return -EINVAL;

 info->preset = preset;
 info->width = dv_presets[preset].width;
 info->height = dv_presets[preset].height;
 strlcpy(info->name, dv_presets[preset].name, sizeof(info->name));
 return 0;
}
