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
typedef  int u32 ;
struct qib_devdata {char* boardname; int majrev; int minrev; int /*<<< orphan*/  revision; int /*<<< orphan*/  boardversion; } ;

/* Variables and functions */
 int /*<<< orphan*/  Arch ; 
 int /*<<< orphan*/  BoardID ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int QIB_CHIP_VERS_MAJ ; 
 int QIB_CHIP_VERS_MIN ; 
 int /*<<< orphan*/  Revision ; 
 int /*<<< orphan*/  Revision_R ; 
 int /*<<< orphan*/  SW ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_devdata*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,...) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(struct qib_devdata *dd)
{
	char *n;
	u32 boardid, namelen;

	boardid = FUNC0(dd->revision, Revision,
			    BoardID);

	switch (boardid) {
	case 2:
		n = "InfiniPath_QLE7140";
		break;
	default:
		FUNC2(dd, "Unknown 6120 board with ID %u\n", boardid);
		n = "Unknown_InfiniPath_6120";
		break;
	}
	namelen = FUNC4(n) + 1;
	dd->boardname = FUNC1(namelen, GFP_KERNEL);
	if (!dd->boardname)
		FUNC2(dd, "Failed allocation for board name: %s\n", n);
	else
		FUNC3(dd->boardname, namelen, "%s", n);

	if (dd->majrev != 4 || !dd->minrev || dd->minrev > 2)
		FUNC2(dd,
			"Unsupported InfiniPath hardware revision %u.%u!\n",
			dd->majrev, dd->minrev);

	FUNC3(dd->boardversion, sizeof(dd->boardversion),
		 "ChipABI %u.%u, %s, InfiniPath%u %u.%u, SW Compat %u\n",
		 QIB_CHIP_VERS_MAJ, QIB_CHIP_VERS_MIN, dd->boardname,
		 (unsigned)FUNC0(dd->revision, Revision_R, Arch),
		 dd->majrev, dd->minrev,
		 (unsigned)FUNC0(dd->revision, Revision_R, SW));

}