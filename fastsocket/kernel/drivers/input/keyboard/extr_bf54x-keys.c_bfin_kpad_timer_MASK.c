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
struct platform_device {int dummy; } ;
struct bf54x_kpad {int /*<<< orphan*/  irq; int /*<<< orphan*/  input; int /*<<< orphan*/  lastkey; scalar_t__ keyup_test_jiffies; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct bf54x_kpad*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct bf54x_kpad* FUNC6 (struct platform_device*) ; 

__attribute__((used)) static void FUNC7(unsigned long data)
{
	struct platform_device *pdev =  (struct platform_device *) data;
	struct bf54x_kpad *bf54x_kpad = FUNC6(pdev);

	if (FUNC1(bf54x_kpad)) {
		/* Try again later */
		FUNC5(&bf54x_kpad->timer,
			  jiffies + bf54x_kpad->keyup_test_jiffies);
		return;
	}

	FUNC3(bf54x_kpad->input, bf54x_kpad->lastkey, 0);
	FUNC4(bf54x_kpad->input);

	/* Clear IRQ Status */

	FUNC0();
	FUNC2(bf54x_kpad->irq);
}