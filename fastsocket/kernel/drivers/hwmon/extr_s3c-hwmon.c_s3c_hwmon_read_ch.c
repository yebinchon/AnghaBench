
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c_hwmon {int lock; int client; } ;
struct device {int dummy; } ;


 int dev_dbg (struct device*,char*,int) ;
 int down_interruptible (int *) ;
 int s3c_adc_read (int ,int) ;
 int up (int *) ;

__attribute__((used)) static int s3c_hwmon_read_ch(struct device *dev,
        struct s3c_hwmon *hwmon, int channel)
{
 int ret;

 ret = down_interruptible(&hwmon->lock);
 if (ret < 0)
  return ret;

 dev_dbg(dev, "reading channel %d\n", channel);

 ret = s3c_adc_read(hwmon->client, channel);
 up(&hwmon->lock);

 return ret;
}
