
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_attribute {int dummy; } ;
struct sys_device {int dummy; } ;
struct dma_info {char* name; } ;
struct dma_channel {int chan; char* dev_id; } ;
typedef int ssize_t ;


 int MAX_DMA_CHANNELS ;
 struct dma_channel* get_dma_channel (int) ;
 struct dma_info* get_dma_info (int) ;
 int sprintf (char*,char*,int,char*,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static ssize_t dma_show_devices(struct sys_device *dev,
    struct sysdev_attribute *attr, char *buf)
{
 ssize_t len = 0;
 int i;

 for (i = 0; i < MAX_DMA_CHANNELS; i++) {
  struct dma_info *info = get_dma_info(i);
  struct dma_channel *channel = get_dma_channel(i);

  if (unlikely(!info) || !channel)
   continue;

  len += sprintf(buf + len, "%2d: %14s    %s\n",
          channel->chan, info->name,
          channel->dev_id);
 }

 return len;
}
