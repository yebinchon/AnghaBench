
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int dummy; } ;
typedef int buf ;


 int COLOUR_MODE_FORMATTER ;
 int SET_CHROM_CTL ;
 int send_control_msg (struct pwc_device*,int ,int ,unsigned char*,int) ;

int pwc_set_colour_mode(struct pwc_device *pdev, int colour)
{
 unsigned char buf;

 if (colour)
  buf = 0xff;
 else
  buf = 0x0;
 return send_control_msg(pdev,
  SET_CHROM_CTL, COLOUR_MODE_FORMATTER, &buf, sizeof(buf));
}
