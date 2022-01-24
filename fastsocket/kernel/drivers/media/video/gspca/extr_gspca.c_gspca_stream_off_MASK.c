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
struct gspca_dev {TYPE_1__* sd_desc; scalar_t__ present; scalar_t__ streaming; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* stop0 ) (struct gspca_dev*) ;int /*<<< orphan*/  (* stopN ) (struct gspca_dev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  D_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct gspca_dev*) ; 

__attribute__((used)) static void FUNC7(struct gspca_dev *gspca_dev)
{
	gspca_dev->streaming = 0;
	if (gspca_dev->present) {
		if (gspca_dev->sd_desc->stopN)
			gspca_dev->sd_desc->stopN(gspca_dev);
		FUNC1(gspca_dev);
		FUNC3(gspca_dev);
		FUNC4(gspca_dev);
		FUNC2(gspca_dev);
	}

	/* always call stop0 to free the subdriver's resources */
	if (gspca_dev->sd_desc->stop0)
		gspca_dev->sd_desc->stop0(gspca_dev);
	FUNC0(D_STREAM, "stream off OK");
}