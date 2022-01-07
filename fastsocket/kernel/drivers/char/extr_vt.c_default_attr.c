
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_intensity; int vc_def_color; int vc_color; scalar_t__ vc_blink; scalar_t__ vc_reverse; scalar_t__ vc_underline; scalar_t__ vc_italic; } ;



__attribute__((used)) static void default_attr(struct vc_data *vc)
{
 vc->vc_intensity = 1;
 vc->vc_italic = 0;
 vc->vc_underline = 0;
 vc->vc_reverse = 0;
 vc->vc_blink = 0;
 vc->vc_color = vc->vc_def_color;
}
