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
struct uvd {int dummy; } ;
struct TYPE_2__ {int camera_model; int /*<<< orphan*/  initialized; } ;

/* Variables and functions */
#define  IBMCAM_MODEL_1 131 
#define  IBMCAM_MODEL_2 130 
#define  IBMCAM_MODEL_3 129 
#define  IBMCAM_MODEL_4 128 
 TYPE_1__* FUNC0 (struct uvd*) ; 
 int /*<<< orphan*/  FUNC1 (struct uvd*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uvd*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uvd*) ; 
 int /*<<< orphan*/  FUNC4 (struct uvd*,int,int,int) ; 

__attribute__((used)) static void FUNC5(struct uvd *uvd)
{
	switch (FUNC0(uvd)->camera_model) {
	case IBMCAM_MODEL_1:
		FUNC4(uvd, 0, 0x00, 0x010c);
		FUNC4(uvd, 0, 0x00, 0x010c);
		FUNC4(uvd, 0, 0x01, 0x0114);
		FUNC4(uvd, 0, 0xc0, 0x010c);
		FUNC4(uvd, 0, 0x00, 0x010c);
		FUNC3(uvd);
		FUNC4(uvd, 1, 0x00, 0x0100);
		FUNC4(uvd, 0, 0x81, 0x0100);	/* LED Off */
		break;
	case IBMCAM_MODEL_2:
case IBMCAM_MODEL_4:
		FUNC4(uvd, 0, 0x0000, 0x010c);	/* Stop the camera */

		FUNC1(uvd, 0x0030, 0x0004);

		FUNC4(uvd, 0, 0x0080, 0x0100);	/* LED Off */
		FUNC4(uvd, 0, 0x0020, 0x0111);
		FUNC4(uvd, 0, 0x00a0, 0x0111);

		FUNC1(uvd, 0x0030, 0x0002);

		FUNC4(uvd, 0, 0x0020, 0x0111);
		FUNC4(uvd, 0, 0x0000, 0x0112);
		break;
	case IBMCAM_MODEL_3:
#if 1
		FUNC4(uvd, 0, 0x0000, 0x010c);

		/* Here we are supposed to select video interface alt. setting 0 */
		FUNC4(uvd, 0, 0x0006, 0x012c);

		FUNC2(uvd, 0x0046, 0x0000);

		FUNC4(uvd, 1, 0x0000, 0x0116);
		FUNC4(uvd, 0, 0x0064, 0x0116);
		FUNC4(uvd, 1, 0x0000, 0x0115);
		FUNC4(uvd, 0, 0x0003, 0x0115);
		FUNC4(uvd, 0, 0x0008, 0x0123);
		FUNC4(uvd, 0, 0x0000, 0x0117);
		FUNC4(uvd, 0, 0x0000, 0x0112);
		FUNC4(uvd, 0, 0x0080, 0x0100);
		FUNC0(uvd)->initialized = 0;
#endif
		break;
	} /* switch */
}