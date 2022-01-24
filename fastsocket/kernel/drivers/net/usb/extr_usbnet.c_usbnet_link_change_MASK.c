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
struct usbnet {int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_LINK_CHANGE ; 
 int /*<<< orphan*/  EVENT_LINK_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,int /*<<< orphan*/ ) ; 

void FUNC3(struct usbnet *dev, bool link, bool need_reset)
{
	/* update link after link is reseted */
	if (link && !need_reset)
		FUNC1(dev->net);
	else
		FUNC0(dev->net);

	if (need_reset && link)
		FUNC2(dev, EVENT_LINK_RESET);
	else
		FUNC2(dev, EVENT_LINK_CHANGE);
}