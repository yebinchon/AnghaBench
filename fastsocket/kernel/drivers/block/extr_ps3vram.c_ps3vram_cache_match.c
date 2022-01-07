
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ps3vram_cache {int page_size; int page_count; int miss; TYPE_1__* tags; int hit; } ;
struct ps3vram_priv {struct ps3vram_cache cache; } ;
struct ps3_system_bus_device {int core; } ;
typedef int loff_t ;
struct TYPE_2__ {int flags; unsigned int address; } ;


 int CACHE_PAGE_PRESENT ;
 int dev_dbg (int *,char*,int,...) ;
 int jiffies ;
 struct ps3vram_priv* ps3_system_bus_get_drvdata (struct ps3_system_bus_device*) ;
 int ps3vram_cache_evict (struct ps3_system_bus_device*,int) ;
 int ps3vram_cache_load (struct ps3_system_bus_device*,int,unsigned int) ;

__attribute__((used)) static unsigned int ps3vram_cache_match(struct ps3_system_bus_device *dev,
     loff_t address)
{
 struct ps3vram_priv *priv = ps3_system_bus_get_drvdata(dev);
 struct ps3vram_cache *cache = &priv->cache;
 unsigned int base;
 unsigned int offset;
 int i;
 static int counter;

 offset = (unsigned int) (address & (cache->page_size - 1));
 base = (unsigned int) (address - offset);


 for (i = 0; i < cache->page_count; i++) {
  if ((cache->tags[i].flags & CACHE_PAGE_PRESENT) &&
      cache->tags[i].address == base) {
   cache->hit++;
   dev_dbg(&dev->core, "Found entry %d: 0x%08x\n", i,
    cache->tags[i].address);
   return i;
  }
 }


 i = (jiffies + (counter++)) % cache->page_count;
 dev_dbg(&dev->core, "Using entry %d\n", i);

 ps3vram_cache_evict(dev, i);
 ps3vram_cache_load(dev, i, base);

 cache->miss++;
 return i;
}
