
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2_hdw {TYPE_1__* hdw_desc; } ;
struct TYPE_2__ {char const* description; } ;



const char *pvr2_hdw_get_desc(struct pvr2_hdw *hdw)
{
 return hdw->hdw_desc->description;
}
