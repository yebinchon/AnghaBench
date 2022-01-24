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
struct pktcdvd_device {scalar_t__ refcnt; int /*<<< orphan*/  flags; } ;
struct gendisk {struct pktcdvd_device* private_data; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PACKET_WRITABLE ; 
 int /*<<< orphan*/  ctl_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pktcdvd_device*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct gendisk *disk, fmode_t mode)
{
	struct pktcdvd_device *pd = disk->private_data;
	int ret = 0;

	FUNC1(&ctl_mutex);
	pd->refcnt--;
	FUNC0(pd->refcnt < 0);
	if (pd->refcnt == 0) {
		int flush = FUNC4(PACKET_WRITABLE, &pd->flags);
		FUNC3(pd, flush);
	}
	FUNC2(&ctl_mutex);
	return ret;
}