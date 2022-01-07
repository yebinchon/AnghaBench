
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ps3vram_priv {int reports; } ;
struct ps3_system_bus_device {int dummy; } ;


 int ETIMEDOUT ;
 int NOTIFIER ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (unsigned int) ;
 int msleep (int) ;
 struct ps3vram_priv* ps3_system_bus_get_drvdata (struct ps3_system_bus_device*) ;
 int * ps3vram_get_notifier (int ,int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int ps3vram_notifier_wait(struct ps3_system_bus_device *dev,
     unsigned int timeout_ms)
{
 struct ps3vram_priv *priv = ps3_system_bus_get_drvdata(dev);
 u32 *notify = ps3vram_get_notifier(priv->reports, NOTIFIER);
 unsigned long timeout = jiffies + msecs_to_jiffies(timeout_ms);

 do {
  if (!notify[3])
   return 0;
  msleep(1);
 } while (time_before(jiffies, timeout));

 return -ETIMEDOUT;
}
