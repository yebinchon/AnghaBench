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
struct wacom_wac {TYPE_1__* features; } ;
struct TYPE_2__ {int type; } ;

/* Variables and functions */
#define  BAMBOO_PT 152 
#define  CINTIQ 151 
#define  DTU 150 
#define  GRAPHIRE 149 
#define  INTUOS 148 
#define  INTUOS3 147 
#define  INTUOS3L 146 
#define  INTUOS3S 145 
#define  INTUOS4 144 
#define  INTUOS4L 143 
#define  INTUOS4S 142 
#define  INTUOS5 141 
#define  INTUOS5L 140 
#define  INTUOS5S 139 
#define  PENPARTNER 138 
#define  PL 137 
#define  PTU 136 
#define  TABLETPC 135 
#define  TABLETPC2FG 134 
#define  WACOM_21UX2 133 
#define  WACOM_22HD 132 
#define  WACOM_24HD 131 
#define  WACOM_BEE 130 
#define  WACOM_G4 129 
#define  WACOM_MO 128 
 int FUNC0 (struct wacom_wac*,void*) ; 
 int FUNC1 (struct wacom_wac*,void*) ; 
 int FUNC2 (struct wacom_wac*,void*) ; 
 int FUNC3 (struct wacom_wac*,void*) ; 
 int FUNC4 (struct wacom_wac*,void*) ; 
 int FUNC5 (struct wacom_wac*,void*) ; 
 int FUNC6 (struct wacom_wac*,void*) ; 
 int FUNC7 (struct wacom_wac*,void*) ; 

int FUNC8(struct wacom_wac *wacom_wac, void *wcombo)
{
	switch (wacom_wac->features->type) {
		case PENPARTNER:
			return FUNC4(wacom_wac, wcombo);

		case PL:
			return FUNC5(wacom_wac, wcombo);

		case WACOM_G4:
		case GRAPHIRE:
		case WACOM_MO:
			return FUNC2(wacom_wac, wcombo);

		case PTU:
			return FUNC6(wacom_wac, wcombo);

		case DTU:
			return FUNC1(wacom_wac, wcombo);

		case INTUOS:
		case INTUOS3S:
		case INTUOS3:
		case INTUOS3L:
		case INTUOS4S:
		case INTUOS4:
		case INTUOS4L:
		case INTUOS5S:
		case INTUOS5:
		case INTUOS5L:
		case CINTIQ:
		case WACOM_BEE:
		case WACOM_21UX2:
		case WACOM_22HD:
		case WACOM_24HD:
			return FUNC3(wacom_wac, wcombo);

		case TABLETPC:
		case TABLETPC2FG:
			return FUNC7(wacom_wac, wcombo);
		case BAMBOO_PT:
			return FUNC0(wacom_wac, wcombo);

		default:
			return 0;
	}
	return 0;
}