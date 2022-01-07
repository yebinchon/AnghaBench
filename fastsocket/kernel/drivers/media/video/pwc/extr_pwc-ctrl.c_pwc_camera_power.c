
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int type; int release; } ;
typedef int buf ;


 int SET_POWER_SAVE_MODE_FORMATTER ;
 int SET_STATUS_CTL ;
 int send_control_msg (struct pwc_device*,int ,int ,char*,int) ;

int pwc_camera_power(struct pwc_device *pdev, int power)
{
 char buf;

 if (pdev->type < 675 || (pdev->type < 730 && pdev->release < 6))
  return 0;

 if (power)
  buf = 0x00;
 else
  buf = 0xFF;
 return send_control_msg(pdev,
  SET_STATUS_CTL, SET_POWER_SAVE_MODE_FORMATTER,
  &buf, sizeof(buf));
}
