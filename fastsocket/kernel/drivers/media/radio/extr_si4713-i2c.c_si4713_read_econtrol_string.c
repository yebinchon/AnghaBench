
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ext_control {int id; int string; int size; } ;
struct TYPE_2__ {int radio_text; int ps_name; } ;
struct si4713_device {TYPE_1__ rds_info; } ;
typedef int s32 ;


 int EINVAL ;
 int ENOSPC ;
 int MAX_RDS_PS_NAME ;
 int MAX_RDS_RADIO_TEXT ;


 int copy_to_user (int ,int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int si4713_read_econtrol_string(struct si4713_device *sdev,
    struct v4l2_ext_control *control)
{
 s32 rval = 0;

 switch (control->id) {
 case 129:
  if (strlen(sdev->rds_info.ps_name) + 1 > control->size) {
   control->size = MAX_RDS_PS_NAME + 1;
   rval = -ENOSPC;
   goto exit;
  }
  rval = copy_to_user(control->string, sdev->rds_info.ps_name,
     strlen(sdev->rds_info.ps_name) + 1);
  break;

 case 128:
  if (strlen(sdev->rds_info.radio_text) + 1 > control->size) {
   control->size = MAX_RDS_RADIO_TEXT + 1;
   rval = -ENOSPC;
   goto exit;
  }
  rval = copy_to_user(control->string, sdev->rds_info.radio_text,
     strlen(sdev->rds_info.radio_text) + 1);
  break;

 default:
  rval = -EINVAL;
  break;
 };

exit:
 return rval;
}
