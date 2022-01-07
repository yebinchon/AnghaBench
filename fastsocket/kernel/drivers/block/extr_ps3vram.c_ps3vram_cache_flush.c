
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ps3vram_cache {int page_count; TYPE_1__* tags; } ;
struct ps3vram_priv {struct ps3vram_cache cache; } ;
struct ps3_system_bus_device {int core; } ;
struct TYPE_2__ {scalar_t__ flags; } ;


 int dev_dbg (int *,char*) ;
 struct ps3vram_priv* ps3_system_bus_get_drvdata (struct ps3_system_bus_device*) ;
 int ps3vram_cache_evict (struct ps3_system_bus_device*,int) ;

__attribute__((used)) static void ps3vram_cache_flush(struct ps3_system_bus_device *dev)
{
 struct ps3vram_priv *priv = ps3_system_bus_get_drvdata(dev);
 struct ps3vram_cache *cache = &priv->cache;
 int i;

 dev_dbg(&dev->core, "FLUSH\n");
 for (i = 0; i < cache->page_count; i++) {
  ps3vram_cache_evict(dev, i);
  cache->tags[i].flags = 0;
 }
}
