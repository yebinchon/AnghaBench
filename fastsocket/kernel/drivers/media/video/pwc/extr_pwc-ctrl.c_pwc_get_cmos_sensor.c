
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int type; } ;
typedef int buf ;


 int GET_STATUS_CTL ;
 int SENSOR_TYPE_FORMATTER1 ;
 int SENSOR_TYPE_FORMATTER2 ;
 int recv_control_msg (struct pwc_device*,int ,int,unsigned char*,int) ;

int pwc_get_cmos_sensor(struct pwc_device *pdev, int *sensor)
{
 unsigned char buf;
 int ret = -1, request;

 if (pdev->type < 675)
  request = SENSOR_TYPE_FORMATTER1;
 else if (pdev->type < 730)
  return -1;
 else
  request = SENSOR_TYPE_FORMATTER2;

 ret = recv_control_msg(pdev,
  GET_STATUS_CTL, request, &buf, sizeof(buf));
 if (ret < 0)
  return ret;
 if (pdev->type < 675)
  *sensor = buf | 0x100;
 else
  *sensor = buf;
 return 0;
}
