
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_device {int * dev; } ;


 int dev_set_drvdata (int *,int *) ;

void v4l2_device_disconnect(struct v4l2_device *v4l2_dev)
{
 if (v4l2_dev->dev) {
  dev_set_drvdata(v4l2_dev->dev, ((void*)0));
  v4l2_dev->dev = ((void*)0);
 }
}
