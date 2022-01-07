
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* d; } ;
struct TYPE_3__ {int vc_report_mouse; } ;


 size_t fg_console ;
 TYPE_2__* vc_cons ;

int mouse_reporting(void)
{
 return vc_cons[fg_console].d->vc_report_mouse;
}
