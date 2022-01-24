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
struct urb {scalar_t__ context; } ;
struct gspca_dev {int /*<<< orphan*/  streaming; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_PACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,struct urb*) ; 

__attribute__((used)) static void FUNC2(struct urb *urb)
{
	struct gspca_dev *gspca_dev = (struct gspca_dev *) urb->context;

	FUNC0(D_PACK, "isoc irq");
	if (!gspca_dev->streaming)
		return;
	FUNC1(gspca_dev, urb);
}