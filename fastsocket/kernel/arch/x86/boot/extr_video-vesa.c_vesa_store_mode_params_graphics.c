
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lfb_depth; int lfb_size; int red_size; int lfb_base; int pages; int lfb_height; int lfb_width; int lfb_linelength; int vesa_attributes; int orig_video_isVGA; } ;
struct TYPE_8__ {TYPE_1__ screen_info; } ;
struct TYPE_7__ {int total_memory; } ;
struct TYPE_6__ {int bpp; int rmask; int lfb_ptr; int image_planes; int v_res; int h_res; int logical_scan; int mode_attr; } ;


 int VIDEO_TYPE_VLFB ;
 TYPE_4__ boot_params ;
 int memcpy (int *,int *,int) ;
 int vesa_dac_set_8bits () ;
 int vesa_store_pm_info () ;
 TYPE_3__ vginfo ;
 TYPE_2__ vminfo ;

__attribute__((used)) static void vesa_store_mode_params_graphics(void)
{

 boot_params.screen_info.orig_video_isVGA = VIDEO_TYPE_VLFB;


 boot_params.screen_info.vesa_attributes = vminfo.mode_attr;
 boot_params.screen_info.lfb_linelength = vminfo.logical_scan;
 boot_params.screen_info.lfb_width = vminfo.h_res;
 boot_params.screen_info.lfb_height = vminfo.v_res;
 boot_params.screen_info.lfb_depth = vminfo.bpp;
 boot_params.screen_info.pages = vminfo.image_planes;
 boot_params.screen_info.lfb_base = vminfo.lfb_ptr;
 memcpy(&boot_params.screen_info.red_size,
        &vminfo.rmask, 8);


 boot_params.screen_info.lfb_size = vginfo.total_memory;

 if (vminfo.bpp <= 8)
  vesa_dac_set_8bits();

 vesa_store_pm_info();
}
