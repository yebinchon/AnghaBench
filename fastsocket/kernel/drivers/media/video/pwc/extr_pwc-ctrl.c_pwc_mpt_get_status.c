
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_mpt_status {unsigned char status; unsigned char time_pan; unsigned char time_tilt; } ;
struct pwc_device {int dummy; } ;
typedef int buf ;


 int GET_MPT_CTL ;
 int PT_STATUS_FORMATTER ;
 int recv_control_msg (struct pwc_device*,int ,int ,unsigned char**,int) ;

__attribute__((used)) static int pwc_mpt_get_status(struct pwc_device *pdev, struct pwc_mpt_status *status)
{
 int ret;
 unsigned char buf[5];

 ret = recv_control_msg(pdev,
  GET_MPT_CTL, PT_STATUS_FORMATTER, &buf, sizeof(buf));
 if (ret < 0)
  return ret;
 status->status = buf[0] & 0x7;
 status->time_pan = (buf[1] << 8) + buf[2];
 status->time_tilt = (buf[3] << 8) + buf[4];
 return 0;
}
