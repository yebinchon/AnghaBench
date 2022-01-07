
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {scalar_t__ state_pipeline_req; } ;



int pvr2_hdw_get_streaming(struct pvr2_hdw *hdw)
{
 return hdw->state_pipeline_req != 0;
}
