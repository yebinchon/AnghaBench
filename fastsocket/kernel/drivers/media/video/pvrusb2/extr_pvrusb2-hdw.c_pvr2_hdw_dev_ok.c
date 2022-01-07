
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {scalar_t__ flag_ok; } ;



int pvr2_hdw_dev_ok(struct pvr2_hdw *hdw)
{
 return (hdw && hdw->flag_ok);
}
