
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int * str; } ;
struct TYPE_6__ {TYPE_1__ str; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ data; } ;
struct TYPE_8__ {TYPE_3__ other_data; } ;
struct detailed_timing {TYPE_4__ data; } ;


 scalar_t__ EDID_DETAIL_MONITOR_NAME ;

__attribute__((used)) static void
monitor_name(struct detailed_timing *t, void *data)
{
 if (t->data.other_data.type == EDID_DETAIL_MONITOR_NAME)
  *(u8 **)data = t->data.other_data.data.str.str;
}
