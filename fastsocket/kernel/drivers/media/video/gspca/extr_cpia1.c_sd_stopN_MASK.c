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
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPIA_COMMAND_GetCameraStatus ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*) ; 

__attribute__((used)) static void FUNC4(struct gspca_dev *gspca_dev)
{
	FUNC0(gspca_dev);

	/* save camera state for later open (developers guide ch 3.5.3) */
	FUNC3(gspca_dev);

	/* GotoLoPower */
	FUNC2(gspca_dev);

	/* Update the camera status */
	FUNC1(gspca_dev, CPIA_COMMAND_GetCameraStatus, 0, 0, 0, 0);
}