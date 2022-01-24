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
struct raw3215_info {char* inbuf; int /*<<< orphan*/  tlet; int /*<<< orphan*/  empty_wait; int /*<<< orphan*/ * buffer; struct ccw_device* cdev; } ;
struct ccw_device {int /*<<< orphan*/  handler; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int NR_3215 ; 
 scalar_t__ RAW3215_BUFFER_SIZE ; 
 scalar_t__ RAW3215_INBUF_SIZE ; 
 struct raw3215_info* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct raw3215_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct raw3215_info*) ; 
 void* FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct raw3215_info*,int /*<<< orphan*/ ,int) ; 
 struct raw3215_info** raw3215 ; 
 int /*<<< orphan*/  raw3215_device_lock ; 
 int /*<<< orphan*/  raw3215_irq ; 
 int /*<<< orphan*/  raw3215_wakeup ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC9 (struct ccw_device *cdev)
{
	struct raw3215_info *raw;
	int line;

	/* Console is special. */
	if (raw3215[0] && (raw3215[0] == FUNC0(&cdev->dev)))
		return 0;
	raw = FUNC4(sizeof(struct raw3215_info) +
		      RAW3215_INBUF_SIZE, GFP_KERNEL|GFP_DMA);
	if (raw == NULL)
		return -ENOMEM;

	FUNC6(&raw3215_device_lock);
	for (line = 0; line < NR_3215; line++) {
		if (!raw3215[line]) {
			raw3215[line] = raw;
			break;
		}
	}
	FUNC7(&raw3215_device_lock);
	if (line == NR_3215) {
		FUNC3(raw);
		return -ENODEV;
	}

	raw->cdev = cdev;
	raw->inbuf = (char *) raw + sizeof(struct raw3215_info);
	FUNC5(raw, 0, sizeof(struct raw3215_info));
	raw->buffer = FUNC4(RAW3215_BUFFER_SIZE,
				       GFP_KERNEL|GFP_DMA);
	if (raw->buffer == NULL) {
		FUNC6(&raw3215_device_lock);
		raw3215[line] = NULL;
		FUNC7(&raw3215_device_lock);
		FUNC3(raw);
		return -ENOMEM;
	}
	FUNC2(&raw->empty_wait);
	FUNC8(&raw->tlet, raw3215_wakeup, (unsigned long) raw);

	FUNC1(&cdev->dev, raw);
	cdev->handler = raw3215_irq;

	return 0;
}