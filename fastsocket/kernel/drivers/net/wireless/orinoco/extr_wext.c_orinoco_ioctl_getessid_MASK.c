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
struct orinoco_private {int /*<<< orphan*/  desired_essid; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; int flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  IW_ESSID_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct orinoco_private* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int FUNC3 (struct orinoco_private*,int*,char*) ; 
 scalar_t__ FUNC4 (struct orinoco_private*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (struct orinoco_private*,unsigned long*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev,
				  struct iw_request_info *info,
				  struct iw_point *erq,
				  char *essidbuf)
{
	struct orinoco_private *priv = FUNC1(dev);
	int active;
	int err = 0;
	unsigned long flags;

	if (FUNC2(dev)) {
		err = FUNC3(priv, &active, essidbuf);
		if (err < 0)
			return err;
		erq->length = err;
	} else {
		if (FUNC4(priv, &flags) != 0)
			return -EBUSY;
		FUNC0(essidbuf, priv->desired_essid, IW_ESSID_MAX_SIZE);
		erq->length = FUNC6(priv->desired_essid);
		FUNC5(priv, &flags);
	}

	erq->flags = 1;

	return 0;
}