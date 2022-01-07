
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct detailed_non_pixel {scalar_t__ type; } ;
struct TYPE_2__ {struct detailed_non_pixel other_data; } ;
struct detailed_timing {TYPE_1__ data; } ;
struct detailed_mode_closure {int connector; int modes; } ;


 scalar_t__ EDID_DETAIL_CVT_3BYTE ;
 scalar_t__ drm_cvt_modes (int ,struct detailed_timing*) ;

__attribute__((used)) static void
do_cvt_mode(struct detailed_timing *timing, void *c)
{
 struct detailed_mode_closure *closure = c;
 struct detailed_non_pixel *data = &timing->data.other_data;

 if (data->type == EDID_DETAIL_CVT_3BYTE)
  closure->modes += drm_cvt_modes(closure->connector, timing);
}
