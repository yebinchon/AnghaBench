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
struct pktcdvd_device {char* name; TYPE_1__* bdev; int /*<<< orphan*/  pkt_dev; } ;
struct class {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  bd_dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_WRITERS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  ctl_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct pktcdvd_device** pkt_devs ; 
 scalar_t__ FUNC4 (char*,char*,char*,int,int,int,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct class *c, char *data)
{
	int n = 0;
	int idx;
	FUNC2(&ctl_mutex, SINGLE_DEPTH_NESTING);
	for (idx = 0; idx < MAX_WRITERS; idx++) {
		struct pktcdvd_device *pd = pkt_devs[idx];
		if (!pd)
			continue;
		n += FUNC4(data+n, "%s %u:%u %u:%u\n",
			pd->name,
			FUNC0(pd->pkt_dev), FUNC1(pd->pkt_dev),
			FUNC0(pd->bdev->bd_dev),
			FUNC1(pd->bdev->bd_dev));
	}
	FUNC3(&ctl_mutex);
	return n;
}