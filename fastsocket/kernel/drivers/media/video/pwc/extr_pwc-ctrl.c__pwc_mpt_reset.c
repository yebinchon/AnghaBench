
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int dummy; } ;
typedef int buf ;


 int PT_RESET_CONTROL_FORMATTER ;
 int SET_MPT_CTL ;
 int send_control_msg (struct pwc_device*,int ,int ,unsigned char*,int) ;

__attribute__((used)) static int _pwc_mpt_reset(struct pwc_device *pdev, int flags)
{
 unsigned char buf;

 buf = flags & 0x03;
 return send_control_msg(pdev,
  SET_MPT_CTL, PT_RESET_CONTROL_FORMATTER, &buf, sizeof(buf));
}
