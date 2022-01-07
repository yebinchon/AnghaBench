
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tags; } ;
struct ps3vram_priv {TYPE_1__ cache; } ;
struct ps3_system_bus_device {int dummy; } ;


 int kfree (int ) ;
 struct ps3vram_priv* ps3_system_bus_get_drvdata (struct ps3_system_bus_device*) ;
 int ps3vram_cache_flush (struct ps3_system_bus_device*) ;

__attribute__((used)) static void ps3vram_cache_cleanup(struct ps3_system_bus_device *dev)
{
 struct ps3vram_priv *priv = ps3_system_bus_get_drvdata(dev);

 ps3vram_cache_flush(dev);
 kfree(priv->cache.tags);
}
