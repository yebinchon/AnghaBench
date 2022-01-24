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
struct video_device {int dummy; } ;
struct TYPE_2__ {struct video_device* fm_dev; } ;
struct poseidon {TYPE_1__ radio_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  VFL_TYPE_RADIO ; 
 int /*<<< orphan*/  poseidon_fm_template ; 
 struct video_device* FUNC0 (struct poseidon*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct video_device*) ; 
 scalar_t__ FUNC2 (struct video_device*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct poseidon *p)
{
	struct video_device *fm_dev;

	fm_dev = FUNC0(p, &poseidon_fm_template);
	if (fm_dev == NULL)
		return -1;

	if (FUNC2(fm_dev, VFL_TYPE_RADIO, -1) < 0) {
		FUNC1(fm_dev);
		return -1;
	}
	p->radio_data.fm_dev = fm_dev;
	return 0;
}