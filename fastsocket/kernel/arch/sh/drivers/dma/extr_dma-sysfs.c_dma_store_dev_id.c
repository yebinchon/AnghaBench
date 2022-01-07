
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_attribute {int dummy; } ;
struct sys_device {int dummy; } ;
struct dma_channel {int dev_id; } ;
typedef size_t ssize_t ;


 int strcpy (int ,char const*) ;
 struct dma_channel* to_dma_channel (struct sys_device*) ;

__attribute__((used)) static ssize_t dma_store_dev_id(struct sys_device *dev,
    struct sysdev_attribute *attr,
    const char *buf, size_t count)
{
 struct dma_channel *channel = to_dma_channel(dev);
 strcpy(channel->dev_id, buf);
 return count;
}
