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
typedef  int u8 ;
struct nouveau_mxm {int dummy; } ;
struct TYPE_2__ {scalar_t__ debug; } ;

/* Variables and functions */
 scalar_t__ NV_DBG_DEBUG ; 
 int FUNC0 (int) ; 
 int* FUNC1 (struct nouveau_mxm*) ; 
 int FUNC2 (struct nouveau_mxm*) ; 
 int FUNC3 (struct nouveau_mxm*) ; 
 int FUNC4 (struct nouveau_mxm*) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_mxm*,char*,...) ; 
 TYPE_1__* FUNC6 (struct nouveau_mxm*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

bool
FUNC8(struct nouveau_mxm *mxm, u8 types,
	     bool (*exec)(struct nouveau_mxm *, u8 *, void *), void *info)
{
	u8 *mxms = FUNC1(mxm);
	u8 *desc = mxms + FUNC2(mxm);
	u8 *fini = desc + FUNC3(mxm) - 1;
	while (desc < fini) {
		u8 type = desc[0] & 0x0f;
		u8 headerlen = 0;
		u8 recordlen = 0;
		u8 entries = 0;

		switch (type) {
		case 0: /* Output Device Structure */
			if (FUNC4(mxm) >= 0x0300)
				headerlen = 8;
			else
				headerlen = 6;
			break;
		case 1: /* System Cooling Capability Structure */
		case 2: /* Thermal Structure */
		case 3: /* Input Power Structure */
			headerlen = 4;
			break;
		case 4: /* GPIO Device Structure */
			headerlen = 4;
			recordlen = 2;
			entries   = (FUNC0(desc[0]) & 0x01f00000) >> 20;
			break;
		case 5: /* Vendor Specific Structure */
			headerlen = 8;
			break;
		case 6: /* Backlight Control Structure */
			if (FUNC4(mxm) >= 0x0300) {
				headerlen = 4;
				recordlen = 8;
				entries   = (desc[1] & 0xf0) >> 4;
			} else {
				headerlen = 8;
			}
			break;
		case 7: /* Fan Control Structure */
			headerlen = 8;
			recordlen = 4;
			entries   = desc[1] & 0x07;
			break;
		default:
			FUNC5(mxm, "unknown descriptor type %d\n", type);
			return false;
		}

		if (FUNC6(mxm)->debug >= NV_DBG_DEBUG && (exec == NULL)) {
			static const char * mxms_desc_name[] = {
				"ODS", "SCCS", "TS", "IPS",
				"GSD", "VSS", "BCS", "FCS",
			};
			u8 *dump = desc;
			int i, j;

			FUNC5(mxm, "%4s: ", mxms_desc_name[type]);
			for (j = headerlen - 1; j >= 0; j--)
				FUNC7("%02x", dump[j]);
			FUNC7("\n");
			dump += headerlen;

			for (i = 0; i < entries; i++, dump += recordlen) {
				FUNC5(mxm, "      ");
				for (j = recordlen - 1; j >= 0; j--)
					FUNC7("%02x", dump[j]);
				FUNC7("\n");
			}
		}

		if (types & (1 << type)) {
			if (!exec(mxm, desc, info))
				return false;
		}

		desc += headerlen + (entries * recordlen);
	}

	return true;
}