#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rc_dev {TYPE_1__* raw; } ;
struct lirc_codec {TYPE_2__* drv; } ;
struct TYPE_4__ {int /*<<< orphan*/  rbuf; int /*<<< orphan*/  minor; } ;
struct TYPE_3__ {struct lirc_codec lirc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct rc_dev *dev)
{
	struct lirc_codec *lirc = &dev->raw->lirc;

	FUNC2(lirc->drv->minor);
	FUNC1(lirc->drv->rbuf);
	FUNC0(lirc->drv);

	return 0;
}