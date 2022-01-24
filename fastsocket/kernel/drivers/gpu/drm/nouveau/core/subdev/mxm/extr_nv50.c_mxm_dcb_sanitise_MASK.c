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
typedef  int u8 ;
typedef  int u16 ;
struct nouveau_mxm {int dummy; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_bios*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nouveau_bios*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  mxm_dcb_sanitise_entry ; 
 int /*<<< orphan*/  mxm_show_unmatched ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_mxm*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nouveau_bios* FUNC3 (struct nouveau_mxm*) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_mxm*,char*) ; 

__attribute__((used)) static void
FUNC5(struct nouveau_mxm *mxm)
{
	struct nouveau_bios *bios = FUNC3(mxm);
	u8  ver, hdr, cnt, len;
	u16 dcb = FUNC1(bios, &ver, &hdr, &cnt, &len);
	if (dcb == 0x0000 || ver != 0x40) {
		FUNC4(mxm, "unsupported DCB version\n");
		return;
	}

	FUNC0(bios, NULL, mxm_dcb_sanitise_entry);
	FUNC2(mxm, 0x01, mxm_show_unmatched, NULL);
}