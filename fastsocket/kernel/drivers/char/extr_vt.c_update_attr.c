
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_attr; int vc_intensity; int vc_reverse; int vc_decscnm; int vc_video_erase_char; int vc_blink; int vc_color; int vc_italic; int vc_underline; } ;


 int build_attr (struct vc_data*,int ,int,int ,int ,int,int ) ;

__attribute__((used)) static void update_attr(struct vc_data *vc)
{
 vc->vc_attr = build_attr(vc, vc->vc_color, vc->vc_intensity,
               vc->vc_blink, vc->vc_underline,
               vc->vc_reverse ^ vc->vc_decscnm, vc->vc_italic);
 vc->vc_video_erase_char = (build_attr(vc, vc->vc_color, 1, vc->vc_blink, 0, vc->vc_decscnm, 0) << 8) | ' ';
}
