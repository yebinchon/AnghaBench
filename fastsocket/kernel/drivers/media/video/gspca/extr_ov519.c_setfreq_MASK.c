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
struct sd {scalar_t__ bridge; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ BRIDGE_W9968CF ; 
 int /*<<< orphan*/  FUNC0 (struct sd*) ; 
 int /*<<< orphan*/  FUNC1 (struct sd*) ; 

__attribute__((used)) static void FUNC2(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;

	FUNC0(sd);

	/* Ugly but necessary */
	if (sd->bridge == BRIDGE_W9968CF)
		FUNC1(sd);
}