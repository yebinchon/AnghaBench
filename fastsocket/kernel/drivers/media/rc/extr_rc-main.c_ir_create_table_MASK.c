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
typedef  int /*<<< orphan*/  u64 ;
struct rc_map_table {int dummy; } ;
struct rc_map {char const* name; int alloc; int size; int /*<<< orphan*/  scan; int /*<<< orphan*/  rc_type; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (size_t) ; 

__attribute__((used)) static int FUNC3(struct rc_map *rc_map,
			   const char *name, u64 rc_type, size_t size)
{
	rc_map->name = name;
	rc_map->rc_type = rc_type;
	rc_map->alloc = FUNC2(size * sizeof(struct rc_map_table));
	rc_map->size = rc_map->alloc / sizeof(struct rc_map_table);
	rc_map->scan = FUNC1(rc_map->alloc, GFP_KERNEL);
	if (!rc_map->scan)
		return -ENOMEM;

	FUNC0(1, "Allocated space for %u keycode entries (%u bytes)\n",
		   rc_map->size, rc_map->alloc);
	return 0;
}