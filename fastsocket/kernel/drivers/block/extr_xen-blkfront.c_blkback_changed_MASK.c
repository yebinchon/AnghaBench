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
struct xenbus_device {int /*<<< orphan*/  dev; } ;
struct blkfront_info {int dummy; } ;
typedef  enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;

/* Variables and functions */
#define  XenbusStateClosed 134 
#define  XenbusStateClosing 133 
#define  XenbusStateConnected 132 
#define  XenbusStateInitWait 131 
#define  XenbusStateInitialised 130 
#define  XenbusStateInitialising 129 
#define  XenbusStateUnknown 128 
 int /*<<< orphan*/  FUNC0 (struct blkfront_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct blkfront_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct blkfront_info* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct xenbus_device *dev,
			    enum xenbus_state backend_state)
{
	struct blkfront_info *info = FUNC3(&dev->dev);

	FUNC2(&dev->dev, "blkfront:blkback_changed to state %d.\n", backend_state);

	switch (backend_state) {
	case XenbusStateInitialising:
	case XenbusStateInitWait:
	case XenbusStateInitialised:
	case XenbusStateUnknown:
	case XenbusStateClosed:
		break;

	case XenbusStateConnected:
		FUNC1(info);
		break;

	case XenbusStateClosing:
		FUNC0(info);
		break;
	}
}