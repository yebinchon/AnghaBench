
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int vid; } ;
struct atxp1_data {int vrm; TYPE_1__ reg; } ;
typedef int ssize_t ;


 int ATXP1_VIDMASK ;
 struct atxp1_data* atxp1_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 int vid_from_reg (int,int ) ;

__attribute__((used)) static ssize_t atxp1_showvcore(struct device *dev, struct device_attribute *attr, char *buf)
{
 int size;
 struct atxp1_data *data;

 data = atxp1_update_device(dev);

 size = sprintf(buf, "%d\n", vid_from_reg(data->reg.vid & ATXP1_VIDMASK, data->vrm));

 return size;
}
