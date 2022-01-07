
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__* lmc_cache; int lock; } ;
struct ib_device {TYPE_1__ cache; } ;


 int EINVAL ;
 scalar_t__ end_port (struct ib_device*) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ start_port (struct ib_device*) ;

int ib_get_cached_lmc(struct ib_device *device,
        u8 port_num,
        u8 *lmc)
{
 unsigned long flags;
 int ret = 0;

 if (port_num < start_port(device) || port_num > end_port(device))
  return -EINVAL;

 read_lock_irqsave(&device->cache.lock, flags);
 *lmc = device->cache.lmc_cache[port_num - start_port(device)];
 read_unlock_irqrestore(&device->cache.lock, flags);

 return ret;
}
