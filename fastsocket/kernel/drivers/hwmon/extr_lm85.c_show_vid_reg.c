
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm85_data {scalar_t__ type; int vid; int vrm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ adt7463 ;
 scalar_t__ adt7468 ;
 struct lm85_data* lm85_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 int vid_from_reg (int,int ) ;

__attribute__((used)) static ssize_t show_vid_reg(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 struct lm85_data *data = lm85_update_device(dev);
 int vid;

 if ((data->type == adt7463 || data->type == adt7468) &&
     (data->vid & 0x80)) {

  vid = vid_from_reg(data->vid & 0x3f, data->vrm);
 } else {

  vid = vid_from_reg(data->vid & 0x1f, data->vrm);
 }

 return sprintf(buf, "%d\n", vid);
}
