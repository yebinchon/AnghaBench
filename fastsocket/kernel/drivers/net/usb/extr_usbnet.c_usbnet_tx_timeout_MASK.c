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
struct usbnet {int /*<<< orphan*/  bh; int /*<<< orphan*/  txq; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct usbnet* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,int /*<<< orphan*/ *) ; 

void FUNC3 (struct net_device *net)
{
	struct usbnet		*dev = FUNC0(net);

	FUNC2 (dev, &dev->txq);
	FUNC1 (&dev->bh);

	// FIXME: device recovery -- reset?
}