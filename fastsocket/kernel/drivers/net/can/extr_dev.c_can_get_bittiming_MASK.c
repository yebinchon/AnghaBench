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
struct net_device {int dummy; } ;
struct can_priv {scalar_t__ bittiming_const; } ;
struct can_bittiming {int /*<<< orphan*/  tq; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*,struct can_bittiming*) ; 
 int FUNC1 (struct net_device*,struct can_bittiming*) ; 
 struct can_priv* FUNC2 (struct net_device*) ; 

int FUNC3(struct net_device *dev, struct can_bittiming *bt)
{
	struct can_priv *priv = FUNC2(dev);
	int err;

	/* Check if the CAN device has bit-timing parameters */
	if (priv->bittiming_const) {

		/* Non-expert mode? Check if the bitrate has been pre-defined */
		if (!bt->tq)
			/* Determine bit-timing parameters */
			err = FUNC0(dev, bt);
		else
			/* Check bit-timing params and calculate proper brp */
			err = FUNC1(dev, bt);
		if (err)
			return err;
	}

	return 0;
}