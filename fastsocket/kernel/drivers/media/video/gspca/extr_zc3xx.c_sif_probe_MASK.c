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
typedef  int u16 ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_PROBE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  SENSOR_PAS106 ; 
 int FUNC1 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*,int) ; 

__attribute__((used)) static int FUNC6(struct gspca_dev *gspca_dev)
{
	u16 checkword;

	FUNC5(gspca_dev, 0x0f);		/* PAS106 */
	FUNC3(gspca_dev, 0x08, 0x008d);
	FUNC2(150);
	checkword = ((FUNC1(gspca_dev, 0x00) & 0x0f) << 4)
			| ((FUNC1(gspca_dev, 0x01) & 0xf0) >> 4);
	FUNC0(D_PROBE, "probe sif 0x%04x", checkword);
	if (checkword == 0x0007) {
		FUNC4(gspca_dev, SENSOR_PAS106);
		return 0x0f;			/* PAS106 */
	}
	return -1;
}