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
struct xenbus_device {int dummy; } ;
struct blkif_sring {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * sring; } ;
struct blkfront_info {int ring_ref; int irq; int /*<<< orphan*/  evtchn; TYPE_1__ ring; int /*<<< orphan*/  sg; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKIF_MAX_SEGMENTS_PER_REQUEST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct blkif_sring*,int /*<<< orphan*/ ) ; 
 int GFP_NOIO ; 
 int GRANT_INVALID_REF ; 
 int /*<<< orphan*/  IRQF_SAMPLE_RANDOM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct blkif_sring*) ; 
 int __GFP_HIGH ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct blkfront_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct blkfront_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  blkif_interrupt ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct xenbus_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct xenbus_device*,int,char*) ; 
 int FUNC10 (struct xenbus_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct xenbus_device *dev,
			 struct blkfront_info *info)
{
	struct blkif_sring *sring;
	int err;

	info->ring_ref = GRANT_INVALID_REF;

	sring = (struct blkif_sring *)FUNC2(GFP_NOIO | __GFP_HIGH);
	if (!sring) {
		FUNC9(dev, -ENOMEM, "allocating shared ring");
		return -ENOMEM;
	}
	FUNC1(sring);
	FUNC0(&info->ring, sring, PAGE_SIZE);

	FUNC6(info->sg, BLKIF_MAX_SEGMENTS_PER_REQUEST);

	err = FUNC10(dev, FUNC7(info->ring.sring));
	if (err < 0) {
		FUNC5((unsigned long)sring);
		info->ring.sring = NULL;
		goto fail;
	}
	info->ring_ref = err;

	err = FUNC8(dev, &info->evtchn);
	if (err)
		goto fail;

	err = FUNC3(info->evtchn,
					blkif_interrupt,
					IRQF_SAMPLE_RANDOM, "blkif", info);
	if (err <= 0) {
		FUNC9(dev, err,
				 "bind_evtchn_to_irqhandler failed");
		goto fail;
	}
	info->irq = err;

	return 0;
fail:
	FUNC4(info, 0);
	return err;
}