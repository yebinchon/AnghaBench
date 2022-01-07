
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {unsigned long serial_number; } ;



unsigned long pvr2_hdw_get_sn(struct pvr2_hdw *hdw)
{
 return hdw->serial_number;
}
