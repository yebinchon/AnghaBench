
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {int id; scalar_t__ type; } ;
struct em28xx {int v4l2_dev; } ;
typedef int qc ;


 int EINVAL ;
 int core ;
 int memset (struct v4l2_queryctrl*,int ,int) ;
 int queryctrl ;
 int v4l2_device_call_all (int *,int ,int ,int ,struct v4l2_queryctrl*) ;

__attribute__((used)) static int check_subdev_ctrl(struct em28xx *dev, int id)
{
 struct v4l2_queryctrl qc;

 memset(&qc, 0, sizeof(qc));
 qc.id = id;


 v4l2_device_call_all(&dev->v4l2_dev, 0, core, queryctrl, &qc);

 if (qc.type)
  return 0;
 else
  return -EINVAL;
}
