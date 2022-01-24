#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct cgroup_map_cb {int /*<<< orphan*/  (* fill ) (struct cgroup_map_cb*,char*,scalar_t__) ;} ;
struct blkio_group {int dummy; } ;
typedef  enum stat_type_cpu { ____Placeholder_stat_type_cpu } stat_type_cpu ;
typedef  enum stat_sub_type { ____Placeholder_stat_sub_type } stat_sub_type ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int BLKIO_STAT_CPU_SECTORS ; 
 int BLKIO_STAT_READ ; 
 int BLKIO_STAT_TOTAL ; 
 int BLKIO_STAT_WRITE ; 
 int MAX_KEY_LEN ; 
 scalar_t__ FUNC0 (char*,int,scalar_t__,struct cgroup_map_cb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ FUNC2 (struct blkio_group*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cgroup_map_cb*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct cgroup_map_cb*,char*,scalar_t__) ; 

__attribute__((used)) static uint64_t FUNC5(struct blkio_group *blkg,
		struct cgroup_map_cb *cb, dev_t dev, enum stat_type_cpu type)
{
	uint64_t disk_total, val;
	char key_str[MAX_KEY_LEN];
	enum stat_sub_type sub_type;

	if (type == BLKIO_STAT_CPU_SECTORS) {
		val = FUNC2(blkg, type, 0);
		return FUNC0(key_str, MAX_KEY_LEN - 1, val, cb, dev);
	}

	for (sub_type = BLKIO_STAT_READ; sub_type < BLKIO_STAT_TOTAL;
			sub_type++) {
		FUNC1(sub_type, dev, key_str, MAX_KEY_LEN, false);
		val = FUNC2(blkg, type, sub_type);
		cb->fill(cb, key_str, val);
	}

	disk_total = FUNC2(blkg, type, BLKIO_STAT_READ) +
			FUNC2(blkg, type, BLKIO_STAT_WRITE);

	FUNC1(BLKIO_STAT_TOTAL, dev, key_str, MAX_KEY_LEN, false);
	cb->fill(cb, key_str, disk_total);
	return disk_total;
}