#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union ib_gid {int dummy; } ib_gid ;
typedef  int u8 ;
typedef  int u16 ;
struct ib_gid_cache {int table_len; TYPE_1__* entry; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; struct ib_gid_cache** gid_cache; } ;
struct ib_device {TYPE_2__ cache; } ;
struct TYPE_3__ {int index; int /*<<< orphan*/  gid; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC1 (union ib_gid*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (struct ib_device*) ; 

int FUNC5(struct ib_device *device,
		       union ib_gid	*gid,
		       u8               *port_num,
		       u16              *index)
{
	struct ib_gid_cache *cache;
	unsigned long flags;
	int p, i;
	int ret = -ENOENT;

	*port_num = -1;
	if (index)
		*index = -1;

	FUNC2(&device->cache.lock, flags);

	for (p = 0; p <= FUNC0(device) - FUNC4(device); ++p) {
		cache = device->cache.gid_cache[p];
		for (i = 0; i < cache->table_len; ++i) {
			if (!FUNC1(gid, &cache->entry[i].gid, sizeof *gid)) {
				*port_num = p + FUNC4(device);
				if (index)
					*index = cache->entry[i].index;
				ret = 0;
				goto found;
			}
		}
	}

found:
	FUNC3(&device->cache.lock, flags);
	return ret;
}