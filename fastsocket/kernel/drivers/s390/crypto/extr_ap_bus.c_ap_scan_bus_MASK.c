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
struct work_struct {int dummy; } ;
struct device {int /*<<< orphan*/  kobj; int /*<<< orphan*/  release; int /*<<< orphan*/  parent; int /*<<< orphan*/ * bus; } ;
struct ap_device {int unregistered; int queue_depth; int device_type; unsigned int functions; struct device device; int /*<<< orphan*/  lock; scalar_t__ qid; int /*<<< orphan*/  timeout; int /*<<< orphan*/  list; int /*<<< orphan*/  requestq; int /*<<< orphan*/  pendingq; } ;
typedef  scalar_t__ ap_qid_t ;

/* Variables and functions */
 int AP_DEVICES ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  AP_RESET_TIMEOUT ; 
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  __ap_scan_bus ; 
 int /*<<< orphan*/  ap_bus_type ; 
 int /*<<< orphan*/  ap_dev_attr_group ; 
 int /*<<< orphan*/  ap_device_release ; 
 int /*<<< orphan*/  ap_domain_index ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ap_device*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (scalar_t__,unsigned int*) ; 
 int FUNC7 (scalar_t__,int*,int*) ; 
 int /*<<< orphan*/  ap_request_timeout ; 
 int /*<<< orphan*/  ap_root_device ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 (int) ; 
 struct device* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct ap_device*) ; 
 struct ap_device* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct device*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ap_device* FUNC24 (struct device*) ; 

__attribute__((used)) static void FUNC25(struct work_struct *unused)
{
	struct ap_device *ap_dev;
	struct device *dev;
	ap_qid_t qid;
	int queue_depth, device_type;
	unsigned int device_functions;
	int rc, i;

	FUNC5();
	if (FUNC8() != 0) {
		return;
	}
	for (i = 0; i < AP_DEVICES; i++) {
		qid = FUNC0(i, ap_domain_index);
		dev = FUNC10(&ap_bus_type, NULL,
				      (void *)(unsigned long)qid,
				      __ap_scan_bus);
		if (FUNC9(i))
			rc = FUNC7(qid, &queue_depth, &device_type);
		else
			rc = -ENODEV;
		if (dev) {
			if (rc == -EBUSY) {
				FUNC18(TASK_UNINTERRUPTIBLE);
				FUNC17(AP_RESET_TIMEOUT);
				rc = FUNC7(qid, &queue_depth,
						    &device_type);
			}
			ap_dev = FUNC24(dev);
			FUNC20(&ap_dev->lock);
			if (rc || ap_dev->unregistered) {
				FUNC22(&ap_dev->lock);
				if (ap_dev->unregistered)
					i--;
				FUNC13(dev);
				FUNC16(dev);
				continue;
			}
			FUNC22(&ap_dev->lock);
			FUNC16(dev);
			continue;
		}
		if (rc)
			continue;
		rc = FUNC3(qid);
		if (rc)
			continue;
		ap_dev = FUNC15(sizeof(*ap_dev), GFP_KERNEL);
		if (!ap_dev)
			break;
		ap_dev->qid = qid;
		ap_dev->queue_depth = queue_depth;
		ap_dev->unregistered = 1;
		FUNC21(&ap_dev->lock);
		FUNC2(&ap_dev->pendingq);
		FUNC2(&ap_dev->requestq);
		FUNC2(&ap_dev->list);
		FUNC19(&ap_dev->timeout, ap_request_timeout,
			    (unsigned long) ap_dev);
		switch (device_type) {
		case 0:
			/* device type probing for old cards */
			if (FUNC4(ap_dev)) {
				FUNC14(ap_dev);
				continue;
			}
			break;
		default:
			ap_dev->device_type = device_type;
		}

		rc = FUNC6(qid, &device_functions);
		if (!rc)
			ap_dev->functions = device_functions;
		else
			ap_dev->functions = 0u;

		ap_dev->device.bus = &ap_bus_type;
		ap_dev->device.parent = ap_root_device;
		if (FUNC11(&ap_dev->device, "card%02x",
				 FUNC1(ap_dev->qid))) {
			FUNC14(ap_dev);
			continue;
		}
		ap_dev->device.release = ap_device_release;
		rc = FUNC12(&ap_dev->device);
		if (rc) {
			FUNC16(&ap_dev->device);
			continue;
		}
		/* Add device attributes. */
		rc = FUNC23(&ap_dev->device.kobj,
					&ap_dev_attr_group);
		if (!rc) {
			FUNC20(&ap_dev->lock);
			ap_dev->unregistered = 0;
			FUNC22(&ap_dev->lock);
		} else
			FUNC13(&ap_dev->device);
	}
}