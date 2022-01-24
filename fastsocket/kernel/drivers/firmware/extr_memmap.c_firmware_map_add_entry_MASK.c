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
typedef  scalar_t__ u64 ;
struct firmware_map_entry {char const* type; int /*<<< orphan*/  list; int /*<<< orphan*/  kobj; scalar_t__ end; scalar_t__ start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  map_entries ; 
 int /*<<< orphan*/  memmap_ktype ; 

__attribute__((used)) static int FUNC4(u64 start, u64 end,
				  const char *type,
				  struct firmware_map_entry *entry)
{
	FUNC0(start > end);

	entry->start = start;
	entry->end = end;
	entry->type = type;
	FUNC1(&entry->list);
	FUNC2(&entry->kobj, &memmap_ktype);

	FUNC3(&entry->list, &map_entries);

	return 0;
}