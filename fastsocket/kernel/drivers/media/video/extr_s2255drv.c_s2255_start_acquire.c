
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct s2255_dev {TYPE_4__* udev; } ;
struct TYPE_7__ {TYPE_2__* frame; } ;
struct TYPE_5__ {int v4l2_dev; } ;
struct s2255_channel {size_t idx; int last_frame; TYPE_3__ buffer; scalar_t__ cur_frame; scalar_t__ bad_payload; TYPE_1__ vdev; } ;
typedef scalar_t__ __le32 ;
struct TYPE_8__ {int dev; } ;
struct TYPE_6__ {scalar_t__ cur_size; scalar_t__ ulState; } ;


 scalar_t__ CMD_START ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long* G_chnmap ;
 scalar_t__ IN_DATA_TOKEN ;
 int SYS_FRAMES ;
 scalar_t__ cpu_to_le32 (unsigned long) ;
 int dev_err (int *,char*) ;
 int dprintk (int,char*,size_t,int) ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int,int ) ;
 int s2255_write_config (TYPE_4__*,unsigned char*,int) ;
 struct s2255_dev* to_s2255_dev (int ) ;

__attribute__((used)) static int s2255_start_acquire(struct s2255_channel *channel)
{
 unsigned char *buffer;
 int res;
 unsigned long chn_rev;
 int j;
 struct s2255_dev *dev = to_s2255_dev(channel->vdev.v4l2_dev);
 chn_rev = G_chnmap[channel->idx];
 buffer = kzalloc(512, GFP_KERNEL);
 if (buffer == ((void*)0)) {
  dev_err(&dev->udev->dev, "out of mem\n");
  return -ENOMEM;
 }

 channel->last_frame = -1;
 channel->bad_payload = 0;
 channel->cur_frame = 0;
 for (j = 0; j < SYS_FRAMES; j++) {
  channel->buffer.frame[j].ulState = 0;
  channel->buffer.frame[j].cur_size = 0;
 }


 *(__le32 *) buffer = IN_DATA_TOKEN;
 *((__le32 *) buffer + 1) = (__le32) cpu_to_le32(chn_rev);
 *((__le32 *) buffer + 2) = CMD_START;
 res = s2255_write_config(dev->udev, (unsigned char *)buffer, 512);
 if (res != 0)
  dev_err(&dev->udev->dev, "CMD_START error\n");

 dprintk(2, "start acquire exit[%d] %d \n", channel->idx, res);
 kfree(buffer);
 return 0;
}
