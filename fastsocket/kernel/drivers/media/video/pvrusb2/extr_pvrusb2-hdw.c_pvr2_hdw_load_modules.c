
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2_string_table {unsigned int cnt; int * lst; } ;
struct pvr2_hdw {int flag_modulefail; TYPE_1__* hdw_desc; } ;
struct pvr2_device_client_table {unsigned int cnt; int * lst; } ;
struct TYPE_2__ {struct pvr2_device_client_table client_table; struct pvr2_string_table client_modules; } ;


 scalar_t__ pvr2_hdw_load_subdev (struct pvr2_hdw*,int *) ;
 int pvr2_hdw_render_useless (struct pvr2_hdw*) ;
 int request_module (int ) ;

__attribute__((used)) static void pvr2_hdw_load_modules(struct pvr2_hdw *hdw)
{
 unsigned int idx;
 const struct pvr2_string_table *cm;
 const struct pvr2_device_client_table *ct;
 int okFl = !0;

 cm = &hdw->hdw_desc->client_modules;
 for (idx = 0; idx < cm->cnt; idx++) {
  request_module(cm->lst[idx]);
 }

 ct = &hdw->hdw_desc->client_table;
 for (idx = 0; idx < ct->cnt; idx++) {
  if (pvr2_hdw_load_subdev(hdw, &ct->lst[idx]) < 0) okFl = 0;
 }
 if (!okFl) {
  hdw->flag_modulefail = !0;
  pvr2_hdw_render_useless(hdw);
 }
}
