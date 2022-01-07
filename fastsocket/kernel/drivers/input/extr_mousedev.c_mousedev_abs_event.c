
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int x; int abs_event; int y; } ;
struct mousedev {TYPE_1__ packet; } ;
struct input_dev {int* absmax; int* absmin; } ;




 int xres ;
 int yres ;

__attribute__((used)) static void mousedev_abs_event(struct input_dev *dev, struct mousedev *mousedev,
    unsigned int code, int value)
{
 int size;

 switch (code) {

 case 129:
  size = dev->absmax[129] - dev->absmin[129];
  if (size == 0)
   size = xres ? : 1;
  if (value > dev->absmax[129])
   value = dev->absmax[129];
  if (value < dev->absmin[129])
   value = dev->absmin[129];
  mousedev->packet.x =
   ((value - dev->absmin[129]) * xres) / size;
  mousedev->packet.abs_event = 1;
  break;

 case 128:
  size = dev->absmax[128] - dev->absmin[128];
  if (size == 0)
   size = yres ? : 1;
  if (value > dev->absmax[128])
   value = dev->absmax[128];
  if (value < dev->absmin[128])
   value = dev->absmin[128];
  mousedev->packet.y = yres -
   ((value - dev->absmin[128]) * yres) / size;
  mousedev->packet.abs_event = 1;
  break;
 }
}
