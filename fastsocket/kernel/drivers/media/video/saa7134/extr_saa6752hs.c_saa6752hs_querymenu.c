
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u32 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_querymenu {int id; } ;
struct v4l2_queryctrl {int id; } ;
struct saa6752hs_state {int has_ac3; } ;


 int EINVAL ;
 int saa6752hs_queryctrl (struct v4l2_subdev*,struct v4l2_queryctrl*) ;
 struct saa6752hs_state* to_state (struct v4l2_subdev*) ;
 int v4l2_ctrl_query_menu (struct v4l2_querymenu*,struct v4l2_queryctrl*,int *) ;
 int v4l2_ctrl_query_menu_valid_items (struct v4l2_querymenu*,int const*) ;

__attribute__((used)) static int saa6752hs_querymenu(struct v4l2_subdev *sd, struct v4l2_querymenu *qmenu)
{
 static const u32 mpeg_audio_encoding[] = {
  130,
  134
 };
 static const u32 mpeg_audio_ac3_encoding[] = {
  130,
  131,
  134
 };
 static u32 mpeg_audio_l2_bitrate[] = {
  129,
  128,
  134
 };
 static u32 mpeg_audio_ac3_bitrate[] = {
  133,
  132,
  134
 };
 struct saa6752hs_state *h = to_state(sd);
 struct v4l2_queryctrl qctrl;
 int err;

 qctrl.id = qmenu->id;
 err = saa6752hs_queryctrl(sd, &qctrl);
 if (err)
  return err;
 switch (qmenu->id) {
 case 135:
  return v4l2_ctrl_query_menu_valid_items(qmenu,
    mpeg_audio_l2_bitrate);
 case 137:
  if (!h->has_ac3)
   return -EINVAL;
  return v4l2_ctrl_query_menu_valid_items(qmenu,
    mpeg_audio_ac3_bitrate);
 case 136:
  return v4l2_ctrl_query_menu_valid_items(qmenu,
   h->has_ac3 ? mpeg_audio_ac3_encoding :
    mpeg_audio_encoding);
 }
 return v4l2_ctrl_query_menu(qmenu, &qctrl, ((void*)0));
}
