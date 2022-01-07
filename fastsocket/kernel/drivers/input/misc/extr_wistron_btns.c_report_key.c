
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;


 int input_report_key (struct input_dev*,unsigned int,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void report_key(struct input_dev *dev, unsigned int keycode)
{
 input_report_key(dev, keycode, 1);
 input_sync(dev);
 input_report_key(dev, keycode, 0);
 input_sync(dev);
}
