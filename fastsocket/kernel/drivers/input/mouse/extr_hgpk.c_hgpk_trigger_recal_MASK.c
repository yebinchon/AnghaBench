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
struct psmouse {struct hgpk_data* private; } ;
struct hgpk_data {int /*<<< orphan*/  recalib_wq; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct psmouse*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,int,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC2(struct psmouse *psmouse, void *data,
				const char *buf, size_t count)
{
	struct hgpk_data *priv = psmouse->private;
	unsigned long value;
	int err;

	err = FUNC1(buf, 10, &value);
	if (err || value != 1)
		return -EINVAL;

	/*
	 * We queue work instead of doing recalibration right here
	 * to avoid adding locking to to hgpk_force_recalibrate()
	 * since workqueue provides serialization.
	 */
	FUNC0(psmouse, &priv->recalib_wq, 0);
	return count;
}