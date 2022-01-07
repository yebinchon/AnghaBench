
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zhenhua {unsigned char* data; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;


 int ABS_RZ ;
 int ABS_X ;
 int ABS_Y ;
 int ABS_Z ;
 int input_report_abs (struct input_dev*,int ,unsigned char) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void zhenhua_process_packet(struct zhenhua *zhenhua)
{
 struct input_dev *dev = zhenhua->dev;
 unsigned char *data = zhenhua->data;

 input_report_abs(dev, ABS_Y, data[1]);
 input_report_abs(dev, ABS_X, data[2]);
 input_report_abs(dev, ABS_RZ, data[3]);
 input_report_abs(dev, ABS_Z, data[4]);

 input_sync(dev);
}
