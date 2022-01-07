
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int dummy; } ;
typedef int buf ;


 int AWB_CONTROL_SPEED_FORMATTER ;
 int SET_CHROM_CTL ;
 int send_control_msg (struct pwc_device*,int ,int ,unsigned char*,int) ;

__attribute__((used)) static int pwc_set_wb_speed(struct pwc_device *pdev, int speed)
{
 unsigned char buf;


 buf = speed / 0x7f0;
 return send_control_msg(pdev,
  SET_CHROM_CTL, AWB_CONTROL_SPEED_FORMATTER, &buf, sizeof(buf));
}
