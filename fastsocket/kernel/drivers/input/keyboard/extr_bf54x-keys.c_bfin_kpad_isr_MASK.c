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
typedef  int /*<<< orphan*/  u16 ;
struct platform_device {int dummy; } ;
struct input_dev {int dummy; } ;
struct bf54x_kpad {int lastkey; scalar_t__ keyup_test_jiffies; int /*<<< orphan*/  timer; int /*<<< orphan*/  irq; struct input_dev* input; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct bf54x_kpad*,struct input_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct bf54x_kpad*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct bf54x_kpad* FUNC8 (struct platform_device*) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct platform_device *pdev = dev_id;
	struct bf54x_kpad *bf54x_kpad = FUNC8(pdev);
	struct input_dev *input = bf54x_kpad->input;
	int key;
	u16 rowcol = FUNC3();

	key = FUNC1(bf54x_kpad, input, rowcol);

	FUNC5(input, key, 1);
	FUNC6(input);

	if (FUNC2(bf54x_kpad)) {
		FUNC4(bf54x_kpad->irq);
		bf54x_kpad->lastkey = key;
		FUNC7(&bf54x_kpad->timer,
			  jiffies + bf54x_kpad->keyup_test_jiffies);
	} else {
		FUNC5(input, key, 0);
		FUNC6(input);

		FUNC0();
	}

	return IRQ_HANDLED;
}