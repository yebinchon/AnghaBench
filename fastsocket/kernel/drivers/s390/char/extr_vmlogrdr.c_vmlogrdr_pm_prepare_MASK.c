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
struct vmlogrdr_priv_t {int /*<<< orphan*/  priv_lock; scalar_t__ dev_in_use; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 struct vmlogrdr_priv_t* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	int rc;
	struct vmlogrdr_priv_t *priv = FUNC0(dev);

	rc = 0;
	if (priv) {
		FUNC3(&priv->priv_lock);
		if (priv->dev_in_use)
			rc = -EBUSY;
		FUNC4(&priv->priv_lock);
	}
	if (rc)
		FUNC2("vmlogrdr: device %s is busy. Refuse to suspend.\n",
		       FUNC1(dev));
	return rc;
}