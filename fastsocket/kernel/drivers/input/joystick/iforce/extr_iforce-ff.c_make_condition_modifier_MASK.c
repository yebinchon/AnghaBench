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
typedef  int u16 ;
struct resource {int start; } ;
struct TYPE_2__ {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
struct iforce {int /*<<< orphan*/  mem_mutex; TYPE_1__ device_memory; } ;
typedef  int __u16 ;
typedef  int __s16 ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FF_CMD_CONDITION ; 
 unsigned char FUNC0 (int) ; 
 unsigned char FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,struct resource*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (struct iforce*,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct iforce* iforce,
	struct resource* mod_chunk, int no_alloc,
	__u16 rsat, __u16 lsat, __s16 rk, __s16 lk, u16 db, __s16 center)
{
	unsigned char data[10];

	if (!no_alloc) {
		FUNC5(&iforce->mem_mutex);
		if (FUNC2(&(iforce->device_memory), mod_chunk, 8,
			iforce->device_memory.start, iforce->device_memory.end, 2L,
			NULL, NULL)) {
			FUNC6(&iforce->mem_mutex);
			return -ENOSPC;
		}
		FUNC6(&iforce->mem_mutex);
	}

	data[0] = FUNC1(mod_chunk->start);
	data[1] = FUNC0(mod_chunk->start);

	data[2] = (100 * rk) >> 15;	/* Dangerous: the sign is extended by gcc on plateforms providing an arith shift */
	data[3] = (100 * lk) >> 15; /* This code is incorrect on cpus lacking arith shift */

	center = (500 * center) >> 15;
	data[4] = FUNC1(center);
	data[5] = FUNC0(center);

	db = (1000 * db) >> 16;
	data[6] = FUNC1(db);
	data[7] = FUNC0(db);

	data[8] = (100 * rsat) >> 16;
	data[9] = (100 * lsat) >> 16;

	FUNC4(iforce, FF_CMD_CONDITION, data);
	FUNC3("condition", FF_CMD_CONDITION, data);

	return 0;
}