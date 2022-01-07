
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ mem_start; } ;


 int SDLA_WINDOW (struct net_device*,int) ;
 int SDLA_WINDOW_SIZE ;
 int memset (char*,int ,int) ;
 int sdla_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sdla_clear(struct net_device *dev)
{
 unsigned long flags;
 char *base;
 int len, addr, bytes;

 len = 65536;
 addr = 0;
 bytes = SDLA_WINDOW_SIZE;
 base = (void *) dev->mem_start;

 spin_lock_irqsave(&sdla_lock, flags);
 while(len)
 {
  SDLA_WINDOW(dev, addr);
  memset(base, 0, bytes);

  addr += bytes;
  len -= bytes;
 }
 spin_unlock_irqrestore(&sdla_lock, flags);

}
