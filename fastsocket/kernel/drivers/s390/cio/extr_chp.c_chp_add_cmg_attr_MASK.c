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
struct channel_path {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  chp_measurement_attr ; 
 int /*<<< orphan*/  chp_measurement_chars_attr ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC2(struct channel_path *chp)
{
	int ret;

	ret = FUNC0(&chp->dev, &chp_measurement_chars_attr);
	if (ret)
		return ret;
	ret = FUNC0(&chp->dev, &chp_measurement_attr);
	if (ret)
		FUNC1(&chp->dev, &chp_measurement_chars_attr);
	return ret;
}