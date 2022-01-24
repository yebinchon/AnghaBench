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
struct uvd {int /*<<< orphan*/  video_endp; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int camera_model; } ;

/* Variables and functions */
#define  IBMCAM_MODEL_1 131 
#define  IBMCAM_MODEL_2 130 
#define  IBMCAM_MODEL_3 129 
#define  IBMCAM_MODEL_4 128 
 TYPE_1__* FUNC0 (struct uvd*) ; 
 int /*<<< orphan*/  FUNC1 (struct uvd*) ; 
 int /*<<< orphan*/  FUNC2 (struct uvd*) ; 
 int /*<<< orphan*/  FUNC3 (struct uvd*) ; 
 int /*<<< orphan*/  FUNC4 (struct uvd*) ; 
 int /*<<< orphan*/  FUNC5 (struct uvd*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct uvd*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct uvd *uvd, int do_stop)
{
	switch (FUNC0(uvd)->camera_model) {
	case IBMCAM_MODEL_1:
		if (do_stop)
			FUNC6(uvd);
		FUNC5(uvd, 0, 0x0001, 0x0114);
		FUNC5(uvd, 0, 0x00c0, 0x010c);
		FUNC7(uvd->dev, FUNC8(uvd->dev, uvd->video_endp));
		FUNC1(uvd);
		break;
	case IBMCAM_MODEL_2:
		FUNC2(uvd);
		break;
	case IBMCAM_MODEL_3:
		FUNC6(uvd);
		FUNC3(uvd);
		break;
	case IBMCAM_MODEL_4:
		FUNC4(uvd);
		break;
	}
}