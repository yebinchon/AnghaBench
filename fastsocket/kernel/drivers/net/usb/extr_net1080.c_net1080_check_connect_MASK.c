#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct usbnet {TYPE_1__* net; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOLINK ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  REG_STATUS ; 
 int STATUS_CONN_OTHER ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct usbnet*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC4(struct usbnet *dev)
{
	int			retval;
	u16			status;
	u16			*vp = FUNC2(sizeof (u16), GFP_KERNEL);

	if (!vp)
		return -ENOMEM;
	retval = FUNC3(dev, REG_STATUS, vp);
	status = *vp;
	FUNC1(vp);
	if (retval != 0) {
		FUNC0("%s net1080_check_conn read - %d", dev->net->name, retval);
		return retval;
	}
	if ((status & STATUS_CONN_OTHER) != STATUS_CONN_OTHER)
		return -ENOLINK;
	return 0;
}