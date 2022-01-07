
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int unit_number; } ;



int pvr2_hdw_get_unit_number(struct pvr2_hdw *hdw)
{
 return hdw->unit_number;
}
