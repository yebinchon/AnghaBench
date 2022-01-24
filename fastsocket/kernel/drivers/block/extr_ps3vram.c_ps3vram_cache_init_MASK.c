#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ps3vram_tag {int dummy; } ;
struct TYPE_2__ {int page_count; int page_size; int /*<<< orphan*/ * tags; } ;
struct ps3vram_priv {TYPE_1__ cache; } ;
struct ps3_system_bus_device {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int CACHE_PAGE_COUNT ; 
 int CACHE_PAGE_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct ps3vram_priv* FUNC3 (struct ps3_system_bus_device*) ; 

__attribute__((used)) static int FUNC4(struct ps3_system_bus_device *dev)
{
	struct ps3vram_priv *priv = FUNC3(dev);

	priv->cache.page_count = CACHE_PAGE_COUNT;
	priv->cache.page_size = CACHE_PAGE_SIZE;
	priv->cache.tags = FUNC2(sizeof(struct ps3vram_tag) *
				   CACHE_PAGE_COUNT, GFP_KERNEL);
	if (priv->cache.tags == NULL) {
		FUNC0(&dev->core, "Could not allocate cache tags\n");
		return -ENOMEM;
	}

	FUNC1(&dev->core, "Created ram cache: %d entries, %d KiB each\n",
		CACHE_PAGE_COUNT, CACHE_PAGE_SIZE / 1024);

	return 0;
}