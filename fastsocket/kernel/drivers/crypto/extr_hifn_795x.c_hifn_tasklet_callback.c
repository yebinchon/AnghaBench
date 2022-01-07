
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ qlen; } ;
struct hifn_device {scalar_t__ started; TYPE_1__ queue; } ;


 scalar_t__ HIFN_QUEUE_LENGTH ;
 int hifn_clear_rings (struct hifn_device*,int ) ;
 int hifn_process_queue (struct hifn_device*) ;

__attribute__((used)) static void hifn_tasklet_callback(unsigned long data)
{
 struct hifn_device *dev = (struct hifn_device *)data;







 hifn_clear_rings(dev, 0);

 if (dev->started < HIFN_QUEUE_LENGTH && dev->queue.qlen)
  hifn_process_queue(dev);
}
