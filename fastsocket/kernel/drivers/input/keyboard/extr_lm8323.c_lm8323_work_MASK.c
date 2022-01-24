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
typedef  int u8 ;
struct work_struct {int dummy; } ;
struct lm8323_chip {int /*<<< orphan*/  lock; int /*<<< orphan*/ * pwm; TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int INT_ERROR ; 
 int INT_KEYPAD ; 
 int INT_NOINIT ; 
 int INT_PWM1 ; 
 int INT_ROTATOR ; 
 int /*<<< orphan*/  LM8323_CMD_READ_INT ; 
 int LM8323_NUM_PWMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct lm8323_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct lm8323_chip*) ; 
 int FUNC5 (struct lm8323_chip*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct lm8323_chip*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct lm8323_chip* FUNC10 (struct work_struct*) ; 

__attribute__((used)) static void FUNC11(struct work_struct *work)
{
	struct lm8323_chip *lm = FUNC10(work);
	u8 ints;
	int i;

	FUNC6(&lm->lock);

	while ((FUNC5(lm, LM8323_CMD_READ_INT, &ints, 1) == 1) && ints) {
		if (FUNC2(ints & INT_KEYPAD))
			FUNC8(lm);
		if (ints & INT_ROTATOR) {
			/* We don't currently support the rotator. */
			FUNC1(&lm->client->dev, "rotator fired\n");
		}
		if (ints & INT_ERROR) {
			FUNC1(&lm->client->dev, "error!\n");
			FUNC4(lm);
		}
		if (ints & INT_NOINIT) {
			FUNC0(&lm->client->dev, "chip lost config; "
						  "reinitialising\n");
			FUNC3(lm);
		}
		for (i = 0; i < LM8323_NUM_PWMS; i++) {
			if (ints & (1 << (INT_PWM1 + i))) {
				FUNC1(&lm->client->dev,
					 "pwm%d engine completed\n", i);
				FUNC9(&lm->pwm[i]);
			}
		}
	}

	FUNC7(&lm->lock);
}