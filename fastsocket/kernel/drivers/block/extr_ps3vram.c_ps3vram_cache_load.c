
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ps3vram_cache {int page_size; TYPE_1__* tags; } ;
struct ps3vram_priv {struct ps3vram_cache cache; } ;
struct ps3_system_bus_device {int core; } ;
struct TYPE_2__ {unsigned int address; int flags; } ;


 scalar_t__ CACHE_OFFSET ;
 int CACHE_PAGE_PRESENT ;
 int DMA_PAGE_SIZE ;
 int dev_dbg (int *,char*,int,unsigned int) ;
 int dev_err (int *,char*,unsigned int,int,int) ;
 struct ps3vram_priv* ps3_system_bus_get_drvdata (struct ps3_system_bus_device*) ;
 scalar_t__ ps3vram_download (struct ps3_system_bus_device*,unsigned int,scalar_t__,int,int) ;

__attribute__((used)) static void ps3vram_cache_load(struct ps3_system_bus_device *dev, int entry,
          unsigned int address)
{
 struct ps3vram_priv *priv = ps3_system_bus_get_drvdata(dev);
 struct ps3vram_cache *cache = &priv->cache;

 dev_dbg(&dev->core, "Fetching %d: 0x%08x\n", entry, address);
 if (ps3vram_download(dev, address,
        CACHE_OFFSET + entry * cache->page_size,
        DMA_PAGE_SIZE,
        cache->page_size / DMA_PAGE_SIZE) < 0) {
  dev_err(&dev->core,
   "Failed to download from 0x%x to 0x%x size 0x%x\n",
   address, entry * cache->page_size, cache->page_size);
 }

 cache->tags[entry].address = address;
 cache->tags[entry].flags |= CACHE_PAGE_PRESENT;
}
