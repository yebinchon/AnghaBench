
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {int id; int step; } ;
struct v4l2_ext_control {int id; int string; int size; } ;
struct si4713_device {int sd; } ;
typedef scalar_t__ s32 ;


 scalar_t__ EINVAL ;
 scalar_t__ ERANGE ;
 int MAX_RDS_PS_NAME ;
 int MAX_RDS_RADIO_TEXT ;


 scalar_t__ copy_from_user (char*,int ,int) ;
 scalar_t__ si4713_queryctrl (int *,struct v4l2_queryctrl*) ;
 scalar_t__ si4713_set_rds_ps_name (struct si4713_device*,char*) ;
 scalar_t__ si4713_set_rds_radio_text (struct si4713_device*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int si4713_write_econtrol_string(struct si4713_device *sdev,
    struct v4l2_ext_control *control)
{
 struct v4l2_queryctrl vqc;
 int len;
 s32 rval = 0;

 vqc.id = control->id;
 rval = si4713_queryctrl(&sdev->sd, &vqc);
 if (rval < 0)
  goto exit;

 switch (control->id) {
 case 129: {
  char ps_name[MAX_RDS_PS_NAME + 1];

  len = control->size - 1;
  if (len > MAX_RDS_PS_NAME) {
   rval = -ERANGE;
   goto exit;
  }
  rval = copy_from_user(ps_name, control->string, len);
  if (rval < 0)
   goto exit;
  ps_name[len] = '\0';

  if (strlen(ps_name) % vqc.step) {
   rval = -ERANGE;
   goto exit;
  }

  rval = si4713_set_rds_ps_name(sdev, ps_name);
 }
  break;

 case 128: {
  char radio_text[MAX_RDS_RADIO_TEXT + 1];

  len = control->size - 1;
  if (len > MAX_RDS_RADIO_TEXT) {
   rval = -ERANGE;
   goto exit;
  }
  rval = copy_from_user(radio_text, control->string, len);
  if (rval < 0)
   goto exit;
  radio_text[len] = '\0';

  if (strlen(radio_text) % vqc.step) {
   rval = -ERANGE;
   goto exit;
  }

  rval = si4713_set_rds_radio_text(sdev, radio_text);
 }
  break;

 default:
  rval = -EINVAL;
  break;
 };

exit:
 return rval;
}
