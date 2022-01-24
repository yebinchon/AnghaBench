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
struct sysdev_attribute {int dummy; } ;
struct sys_device {int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  NUMA_FOREIGN ; 
 int /*<<< orphan*/  NUMA_HIT ; 
 int /*<<< orphan*/  NUMA_INTERLEAVE_HIT ; 
 int /*<<< orphan*/  NUMA_LOCAL ; 
 int /*<<< orphan*/  NUMA_MISS ; 
 int /*<<< orphan*/  NUMA_OTHER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC2(struct sys_device * dev,
				struct sysdev_attribute *attr, char * buf)
{
	return FUNC1(buf,
		       "numa_hit %lu\n"
		       "numa_miss %lu\n"
		       "numa_foreign %lu\n"
		       "interleave_hit %lu\n"
		       "local_node %lu\n"
		       "other_node %lu\n",
		       FUNC0(dev->id, NUMA_HIT),
		       FUNC0(dev->id, NUMA_MISS),
		       FUNC0(dev->id, NUMA_FOREIGN),
		       FUNC0(dev->id, NUMA_INTERLEAVE_HIT),
		       FUNC0(dev->id, NUMA_LOCAL),
		       FUNC0(dev->id, NUMA_OTHER));
}