
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int dummy; } ;


 int SAVE_USER_DEFAULTS_FORMATTER ;
 int SET_STATUS_CTL ;
 int send_control_msg (struct pwc_device*,int ,int ,int *,int ) ;

int pwc_save_user(struct pwc_device *pdev)
{
 return send_control_msg(pdev,
  SET_STATUS_CTL, SAVE_USER_DEFAULTS_FORMATTER, ((void*)0), 0);
}
