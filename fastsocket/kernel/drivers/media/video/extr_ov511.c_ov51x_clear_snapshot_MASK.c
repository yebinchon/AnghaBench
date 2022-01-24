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
struct usb_ov511 {scalar_t__ bclass; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ BCL_OV511 ; 
 scalar_t__ BCL_OV518 ; 
 int /*<<< orphan*/  R51x_SYS_SNAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_ov511*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct usb_ov511 *ov)
{
	if (ov->bclass == BCL_OV511) {
		FUNC2(ov, R51x_SYS_SNAP, 0x00);
		FUNC2(ov, R51x_SYS_SNAP, 0x02);
		FUNC2(ov, R51x_SYS_SNAP, 0x00);
	} else if (ov->bclass == BCL_OV518) {
		FUNC1(&ov->dev->dev,
			 "snapshot reset not supported yet on OV518(+)\n");
	} else {
		FUNC0(&ov->dev->dev, "clear snap: invalid bridge type\n");
	}
}