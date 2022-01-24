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
struct sd {TYPE_1__* ctrls; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_2__ {int val; } ;

/* Variables and functions */
 size_t CONTRAST ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int) ; 

__attribute__((used)) static void FUNC1(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	int parval;

	parval = 0x07000000		/* contrast */
		+ (sd->ctrls[CONTRAST].val << 16);
	FUNC0(gspca_dev, parval);
}