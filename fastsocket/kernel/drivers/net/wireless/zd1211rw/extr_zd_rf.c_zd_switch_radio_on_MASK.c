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
struct zd_rf {int (* switch_radio_on ) (struct zd_rf*) ;} ;
struct zd_chip {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct zd_rf*) ; 
 int FUNC3 (struct zd_chip*) ; 
 int FUNC4 (struct zd_chip*) ; 
 struct zd_chip* FUNC5 (struct zd_rf*) ; 

int FUNC6(struct zd_rf *rf)
{
	int r, t;
	struct zd_chip *chip = FUNC5(rf);

	FUNC0(FUNC1(&chip->mutex));
	r = FUNC3(chip);
	if (r)
		return r;
	t = rf->switch_radio_on(rf);
	r = FUNC4(chip);
	if (t)
		r = t;
	return r;
}