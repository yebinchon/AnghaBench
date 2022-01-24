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
struct zd_ioreq32 {int dummy; } ;
struct zd_chip {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct zd_chip*,struct zd_ioreq32 const*,unsigned int) ; 

int FUNC3(struct zd_chip *chip, const struct zd_ioreq32 *ioreqs,
	          unsigned int count)
{
	int r;

	FUNC0(&chip->mutex);
	r = FUNC2(chip, ioreqs, count);
	FUNC1(&chip->mutex);
	return r;
}