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
struct sd {scalar_t__ subtype; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_STREAM ; 
 scalar_t__ LogitechClickSmart310 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*) ; 

__attribute__((used)) static int FUNC2(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;

	/* initialisation of spca500 based cameras is deferred */
	FUNC0(D_STREAM, "SPCA500 init");
	if (sd->subtype == LogitechClickSmart310)
		FUNC1(gspca_dev);
/*	else
		spca500_initialise(gspca_dev); */
	FUNC0(D_STREAM, "SPCA500 init done");
	return 0;
}