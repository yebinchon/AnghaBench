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
struct device_driver {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  map_size ; 
 int /*<<< orphan*/  map_storep ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  sdebug_store_sectors ; 

__attribute__((used)) static ssize_t FUNC3(struct device_driver *ddp, char *buf)
{
	ssize_t count;

	if (!FUNC2())
		return FUNC1(buf, PAGE_SIZE, "0-%u\n",
				 sdebug_store_sectors);

	count = FUNC0(buf, PAGE_SIZE, map_storep, map_size);

	buf[count++] = '\n';
	buf[count++] = 0;

	return count;
}