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
struct sd {TYPE_1__* sensor; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_2__ {int (* init ) (struct sd*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  D_CONF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct sd*) ; 

__attribute__((used)) static int FUNC2(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	int err;

	FUNC0(D_CONF, "Initializing ALi m5602 webcam");
	/* Run the init sequence */
	err = sd->sensor->init(sd);

	return err;
}