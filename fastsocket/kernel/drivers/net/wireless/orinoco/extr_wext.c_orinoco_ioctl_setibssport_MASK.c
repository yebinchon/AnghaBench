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
struct orinoco_private {int ibss_port; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINPROGRESS ; 
 struct orinoco_private* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct orinoco_private*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct orinoco_private*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct orinoco_private*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
				     struct iw_request_info *info,
				     void *wrqu,
				     char *extra)

{
	struct orinoco_private *priv = FUNC0(dev);
	int val = *((int *) extra);
	unsigned long flags;

	if (FUNC1(priv, &flags) != 0)
		return -EBUSY;

	priv->ibss_port = val;

	/* Actually update the mode we are using */
	FUNC3(priv);

	FUNC2(priv, &flags);
	return -EINPROGRESS;		/* Call commit handler */
}