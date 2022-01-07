
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_attribute {int dummy; } ;
struct sys_device {int dummy; } ;
struct dma_channel {int vchan; } ;
typedef size_t ssize_t ;


 int dma_configure_channel (int ,unsigned long) ;
 unsigned long simple_strtoul (char const*,int *,int ) ;
 struct dma_channel* to_dma_channel (struct sys_device*) ;

__attribute__((used)) static ssize_t dma_store_config(struct sys_device *dev,
    struct sysdev_attribute *attr,
    const char *buf, size_t count)
{
 struct dma_channel *channel = to_dma_channel(dev);
 unsigned long config;

 config = simple_strtoul(buf, ((void*)0), 0);
 dma_configure_channel(channel->vchan, config);

 return count;
}
