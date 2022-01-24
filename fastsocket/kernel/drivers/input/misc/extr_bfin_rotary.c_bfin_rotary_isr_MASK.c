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
struct bfin_rot {int /*<<< orphan*/  button_key; int /*<<< orphan*/  input; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
#define  CZMII 131 
#define  DCII 130 
#define  ICII 129 
 int /*<<< orphan*/  IRQ_HANDLED ; 
#define  UCII 128 
 int /*<<< orphan*/  W1LCNT_ZERO ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct bfin_rot* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bfin_rot*,int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct platform_device *pdev = dev_id;
	struct bfin_rot *rotary = FUNC4(pdev);
	int delta;

	switch (FUNC1()) {

	case ICII:
		break;

	case UCII:
	case DCII:
		delta = FUNC0();
		if (delta)
			FUNC6(rotary, delta);
		break;

	case CZMII:
		FUNC5(rotary->input, rotary->button_key);
		break;

	default:
		break;
	}

	FUNC2(W1LCNT_ZERO);	/* Clear COUNTER */
	FUNC3(-1);	/* Clear STATUS */

	return IRQ_HANDLED;
}