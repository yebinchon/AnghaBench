
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_attribute {int dummy; } ;
struct sys_device {int dummy; } ;
struct dma_channel {char* dev_id; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 struct dma_channel* to_dma_channel (struct sys_device*) ;

__attribute__((used)) static ssize_t dma_show_dev_id(struct sys_device *dev,
    struct sysdev_attribute *attr, char *buf)
{
 struct dma_channel *channel = to_dma_channel(dev);
 return sprintf(buf, "%s\n", channel->dev_id);
}
