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
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_2__ {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
struct iforce {int /*<<< orphan*/  mem_mutex; TYPE_1__ device_memory; } ;
typedef  int /*<<< orphan*/  __s16 ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FF_CMD_MAGNITUDE ; 
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,struct resource*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (struct iforce*,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct iforce* iforce,
	struct resource* mod_chunk, int no_alloc, __s16 level)
{
	unsigned char data[3];

	if (!no_alloc) {
		FUNC6(&iforce->mem_mutex);
		if (FUNC3(&(iforce->device_memory), mod_chunk, 2,
			iforce->device_memory.start, iforce->device_memory.end, 2L,
			NULL, NULL)) {
			FUNC7(&iforce->mem_mutex);
			return -ENOSPC;
		}
		FUNC7(&iforce->mem_mutex);
	}

	data[0] = FUNC2(mod_chunk->start);
	data[1] = FUNC0(mod_chunk->start);
	data[2] = FUNC1(level);

	FUNC5(iforce, FF_CMD_MAGNITUDE, data);

	FUNC4("magnitude: ", FF_CMD_MAGNITUDE, data);
	return 0;
}