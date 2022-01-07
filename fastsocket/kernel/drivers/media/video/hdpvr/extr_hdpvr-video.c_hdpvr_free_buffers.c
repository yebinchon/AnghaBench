
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdpvr_device {int rec_buff_list; int free_buff_list; } ;


 int hdpvr_cancel_queue (struct hdpvr_device*) ;
 int hdpvr_free_queue (int *) ;

int hdpvr_free_buffers(struct hdpvr_device *dev)
{
 hdpvr_cancel_queue(dev);

 hdpvr_free_queue(&dev->free_buff_list);
 hdpvr_free_queue(&dev->rec_buff_list);

 return 0;
}
