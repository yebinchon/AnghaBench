
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps3vram_priv {scalar_t__* ctrl; } ;
struct ps3_system_bus_device {int core; } ;


 size_t CTRL_GET ;
 size_t CTRL_PUT ;
 size_t CTRL_TOP ;
 int ETIMEDOUT ;
 int dev_warn (int *,char*,scalar_t__,scalar_t__,scalar_t__) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (unsigned int) ;
 int msleep (int) ;
 struct ps3vram_priv* ps3_system_bus_get_drvdata (struct ps3_system_bus_device*) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int ps3vram_wait_ring(struct ps3_system_bus_device *dev,
        unsigned int timeout_ms)
{
 struct ps3vram_priv *priv = ps3_system_bus_get_drvdata(dev);
 unsigned long timeout = jiffies + msecs_to_jiffies(timeout_ms);

 do {
  if (priv->ctrl[CTRL_PUT] == priv->ctrl[CTRL_GET])
   return 0;
  msleep(1);
 } while (time_before(jiffies, timeout));

 dev_warn(&dev->core, "FIFO timeout (%08x/%08x/%08x)\n",
   priv->ctrl[CTRL_PUT], priv->ctrl[CTRL_GET],
   priv->ctrl[CTRL_TOP]);

 return -ETIMEDOUT;
}
