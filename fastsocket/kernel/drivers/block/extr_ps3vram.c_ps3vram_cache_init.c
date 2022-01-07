
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ps3vram_tag {int dummy; } ;
struct TYPE_2__ {int page_count; int page_size; int * tags; } ;
struct ps3vram_priv {TYPE_1__ cache; } ;
struct ps3_system_bus_device {int core; } ;


 int CACHE_PAGE_COUNT ;
 int CACHE_PAGE_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int,int) ;
 int * kzalloc (int,int ) ;
 struct ps3vram_priv* ps3_system_bus_get_drvdata (struct ps3_system_bus_device*) ;

__attribute__((used)) static int ps3vram_cache_init(struct ps3_system_bus_device *dev)
{
 struct ps3vram_priv *priv = ps3_system_bus_get_drvdata(dev);

 priv->cache.page_count = CACHE_PAGE_COUNT;
 priv->cache.page_size = CACHE_PAGE_SIZE;
 priv->cache.tags = kzalloc(sizeof(struct ps3vram_tag) *
       CACHE_PAGE_COUNT, GFP_KERNEL);
 if (priv->cache.tags == ((void*)0)) {
  dev_err(&dev->core, "Could not allocate cache tags\n");
  return -ENOMEM;
 }

 dev_info(&dev->core, "Created ram cache: %d entries, %d KiB each\n",
  CACHE_PAGE_COUNT, CACHE_PAGE_SIZE / 1024);

 return 0;
}
