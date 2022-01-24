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
struct tape_device {int dummy; } ;
typedef  int __u64 ;

/* Variables and functions */
 int FUNC0 (struct tape_device*,int*) ; 

__attribute__((used)) static int
FUNC1(struct tape_device *device, int mt_count)
{
	__u64 block_id;
	int rc;

	rc = FUNC0(device, &block_id);
	if (rc)
		return rc;
	return block_id >> 32;
}