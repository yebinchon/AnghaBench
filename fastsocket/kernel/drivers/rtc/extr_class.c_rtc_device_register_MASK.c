#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  release; int /*<<< orphan*/  class; struct device* parent; } ;
struct rtc_device {int id; int max_user_freq; TYPE_1__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/  irq_queue; int /*<<< orphan*/  irq_task_lock; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  ops_lock; struct module* owner; struct rtc_class_ops const* ops; } ;
struct rtc_class_ops {int dummy; } ;
struct module {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct rtc_device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_ID_MASK ; 
 int /*<<< orphan*/  RTC_DEVICE_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  idr_lock ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct rtc_device*) ; 
 struct rtc_device* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rtc_class ; 
 int /*<<< orphan*/  FUNC15 (struct rtc_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct rtc_device*) ; 
 int /*<<< orphan*/  rtc_device_release ; 
 int /*<<< orphan*/  rtc_idr ; 
 int /*<<< orphan*/  FUNC17 (struct rtc_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct rtc_device*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

struct rtc_device *FUNC21(const char *name, struct device *dev,
					const struct rtc_class_ops *ops,
					struct module *owner)
{
	struct rtc_device *rtc;
	int id, err;

	if (FUNC7(&rtc_idr, GFP_KERNEL) == 0) {
		err = -ENOMEM;
		goto exit;
	}


	FUNC13(&idr_lock);
	err = FUNC6(&rtc_idr, NULL, &id);
	FUNC14(&idr_lock);

	if (err < 0)
		goto exit;

	id = id & MAX_ID_MASK;

	rtc = FUNC11(sizeof(struct rtc_device), GFP_KERNEL);
	if (rtc == NULL) {
		err = -ENOMEM;
		goto exit_idr;
	}

	rtc->id = id;
	rtc->ops = ops;
	rtc->owner = owner;
	rtc->max_user_freq = 64;
	rtc->dev.parent = dev;
	rtc->dev.class = rtc_class;
	rtc->dev.release = rtc_device_release;

	FUNC12(&rtc->ops_lock);
	FUNC19(&rtc->irq_lock);
	FUNC19(&rtc->irq_task_lock);
	FUNC9(&rtc->irq_queue);

	FUNC20(rtc->name, name, RTC_DEVICE_NAME_SIZE);
	FUNC4(&rtc->dev, "rtc%d", id);

	FUNC16(rtc);

	err = FUNC5(&rtc->dev);
	if (err)
		goto exit_kfree;

	FUNC15(rtc);
	FUNC18(rtc);
	FUNC17(rtc);

	FUNC2(dev, "rtc core: registered %s as %s\n",
			rtc->name, FUNC3(&rtc->dev));

	return rtc;

exit_kfree:
	FUNC10(rtc);

exit_idr:
	FUNC13(&idr_lock);
	FUNC8(&rtc_idr, id);
	FUNC14(&idr_lock);

exit:
	FUNC1(dev, "rtc core: unable to register %s, err = %d\n",
			name, err);
	return FUNC0(err);
}