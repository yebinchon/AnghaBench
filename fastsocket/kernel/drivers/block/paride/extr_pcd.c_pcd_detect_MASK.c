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
struct pcd_unit {int present; scalar_t__ disk; int /*<<< orphan*/  pi; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 size_t D_DLY ; 
 size_t D_MOD ; 
 size_t D_PRO ; 
 size_t D_PRT ; 
 size_t D_SLV ; 
 size_t D_UNI ; 
 int PCD_UNITS ; 
 int /*<<< orphan*/  PCD_VERSION ; 
 int /*<<< orphan*/  PI_PCD ; 
 int*** drives ; 
 int /*<<< orphan*/  major ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  nice ; 
 struct pcd_unit* pcd ; 
 int /*<<< orphan*/  pcd_buffer ; 
 scalar_t__ pcd_drive_count ; 
 int /*<<< orphan*/  FUNC0 (struct pcd_unit*,int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  verbose ; 

__attribute__((used)) static int FUNC5(void)
{
	char id[18];
	int k, unit;
	struct pcd_unit *cd;

	FUNC3("%s: %s version %s, major %d, nice %d\n",
	       name, name, PCD_VERSION, major, nice);

	k = 0;
	if (pcd_drive_count == 0) { /* nothing spec'd - so autoprobe for 1 */
		cd = pcd;
		if (FUNC1(cd->pi, 1, -1, -1, -1, -1, -1, pcd_buffer,
			    PI_PCD, verbose, cd->name)) {
			if (!FUNC0(cd, -1, id) && cd->disk) {
				cd->present = 1;
				k++;
			} else
				FUNC2(cd->pi);
		}
	} else {
		for (unit = 0, cd = pcd; unit < PCD_UNITS; unit++, cd++) {
			int *conf = *drives[unit];
			if (!conf[D_PRT])
				continue;
			if (!FUNC1(cd->pi, 0, conf[D_PRT], conf[D_MOD],
				     conf[D_UNI], conf[D_PRO], conf[D_DLY],
				     pcd_buffer, PI_PCD, verbose, cd->name)) 
				continue;
			if (!FUNC0(cd, conf[D_SLV], id) && cd->disk) {
				cd->present = 1;
				k++;
			} else
				FUNC2(cd->pi);
		}
	}
	if (k)
		return 0;

	FUNC3("%s: No CD-ROM drive found\n", name);
	for (unit = 0, cd = pcd; unit < PCD_UNITS; unit++, cd++)
		FUNC4(cd->disk);
	return -1;
}