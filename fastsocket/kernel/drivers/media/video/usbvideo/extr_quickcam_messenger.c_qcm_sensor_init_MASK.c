#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  whiteness; int /*<<< orphan*/  colour; int /*<<< orphan*/  hue; int /*<<< orphan*/  contrast; int /*<<< orphan*/  brightness; } ;
struct uvd {TYPE_1__ vpic; int /*<<< orphan*/  dev; scalar_t__ user_data; } ;
struct qcm {size_t size; } ;
struct TYPE_7__ {int /*<<< orphan*/  cmd; } ;
struct TYPE_6__ {int reg; int val; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISOC_PACKET_SIZE ; 
 int STV_ISO_ENABLE ; 
 TYPE_3__* camera_sizes ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uvd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uvd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uvd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* regval_table ; 

__attribute__((used)) static int FUNC8(struct uvd *uvd)
{
	struct qcm *cam = (struct qcm *) uvd->user_data;
	int ret;
	int i;

	for (i=0; i < FUNC0(regval_table) ; i++) {
		FUNC1(ret, FUNC6(uvd->dev,
					regval_table[i].reg,
					regval_table[i].val));
	}

	FUNC1(ret, FUNC7(uvd->dev, 0x15c1,
				FUNC2(ISOC_PACKET_SIZE)));
	FUNC1(ret, FUNC6(uvd->dev, 0x15c3, 0x08));
	FUNC1(ret, FUNC6(uvd->dev, 0x143f, 0x01));

	FUNC1(ret, FUNC6(uvd->dev, STV_ISO_ENABLE, 0x00));

	FUNC1(ret, FUNC5(uvd, camera_sizes[cam->size].cmd));

	FUNC1(ret, FUNC4(uvd, uvd->vpic.brightness,
			uvd->vpic.contrast, uvd->vpic.hue, uvd->vpic.colour));

	FUNC1(ret, FUNC3(uvd, uvd->vpic.whiteness));
	FUNC1(ret, FUNC5(uvd, camera_sizes[cam->size].cmd));

	return 0;
}