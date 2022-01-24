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
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int ORIGIN_HASH_SIZE ; 
 scalar_t__ _origins ; 
 int /*<<< orphan*/  _origins_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void)
{
	int i;

	_origins = FUNC3(ORIGIN_HASH_SIZE * sizeof(struct list_head),
			   GFP_KERNEL);
	if (!_origins) {
		FUNC0("unable to allocate memory");
		return -ENOMEM;
	}

	for (i = 0; i < ORIGIN_HASH_SIZE; i++)
		FUNC1(_origins + i);
	FUNC2(&_origins_lock);

	return 0;
}