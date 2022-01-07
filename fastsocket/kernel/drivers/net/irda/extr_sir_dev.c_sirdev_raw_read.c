
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int data; } ;
struct sir_dev {TYPE_1__ rx_buff; int enable_rx; } ;


 int EIO ;
 scalar_t__ atomic_read (int *) ;
 int memcpy (char*,int,int) ;

int sirdev_raw_read(struct sir_dev *dev, char *buf, int len)
{
 int count;

 if (atomic_read(&dev->enable_rx))
  return -EIO;

 count = (len < dev->rx_buff.len) ? len : dev->rx_buff.len;

 if (count > 0) {
  memcpy(buf, dev->rx_buff.data, count);
  dev->rx_buff.data += count;
  dev->rx_buff.len -= count;
 }



 return count;
}
