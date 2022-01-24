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
struct dm_target {int /*<<< orphan*/  num_flush_requests; } ;
struct clone_info {int /*<<< orphan*/  map; int /*<<< orphan*/  bio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct clone_info*,struct dm_target*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct dm_target* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct clone_info *ci)
{
	unsigned target_nr = 0;
	struct dm_target *ti;

	FUNC0(FUNC2(ci->bio));
	while ((ti = FUNC3(ci->map, target_nr++)))
		FUNC1(ci, ti, ti->num_flush_requests, 0);

	return 0;
}