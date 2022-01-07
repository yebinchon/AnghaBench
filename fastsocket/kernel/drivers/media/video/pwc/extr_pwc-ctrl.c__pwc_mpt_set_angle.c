
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int dummy; } ;
typedef int buf ;


 int PT_RELATIVE_CONTROL_FORMATTER ;
 int SET_MPT_CTL ;
 int send_control_msg (struct pwc_device*,int ,int ,unsigned char**,int) ;

__attribute__((used)) static int _pwc_mpt_set_angle(struct pwc_device *pdev, int pan, int tilt)
{
 unsigned char buf[4];






 pan = 64 * pan / 100;
 tilt = -64 * tilt / 100;
 buf[0] = pan & 0xFF;
 buf[1] = (pan >> 8) & 0xFF;
 buf[2] = tilt & 0xFF;
 buf[3] = (tilt >> 8) & 0xFF;
 return send_control_msg(pdev,
  SET_MPT_CTL, PT_RELATIVE_CONTROL_FORMATTER, &buf, sizeof(buf));
}
