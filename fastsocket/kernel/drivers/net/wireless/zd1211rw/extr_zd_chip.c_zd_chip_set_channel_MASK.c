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
typedef  int /*<<< orphan*/  u8 ;
struct zd_chip {int /*<<< orphan*/  mutex; int /*<<< orphan*/  rf; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR_CONFIG_PHILIPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct zd_chip*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct zd_chip*) ; 
 int FUNC4 (struct zd_chip*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct zd_chip*) ; 
 int FUNC6 (struct zd_chip*) ; 
 int FUNC7 (struct zd_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC9(struct zd_chip *chip, u8 channel)
{
	int r, t;

	FUNC0(&chip->mutex);
	r = FUNC5(chip);
	if (r)
		goto out;
	r = FUNC8(&chip->rf, channel);
	if (r)
		goto unlock;
	r = FUNC4(chip, channel);
	if (r)
		goto unlock;
	r = FUNC3(chip);
	if (r)
		goto unlock;
	r = FUNC2(chip, channel);
	if (r)
		goto unlock;
	r = FUNC7(chip, 0, CR_CONFIG_PHILIPS);
unlock:
	t = FUNC6(chip);
	if (t && !r)
		r = t;
out:
	FUNC1(&chip->mutex);
	return r;
}