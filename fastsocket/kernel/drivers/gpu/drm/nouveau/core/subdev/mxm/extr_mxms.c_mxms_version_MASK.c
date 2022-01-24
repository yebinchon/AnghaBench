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

/* Variables and functions */
 int* FUNC0 (struct nouveau_mxm*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_mxm*,char*,int,int) ; 

u16
FUNC2(struct nouveau_mxm *mxm)
{
	u8 *mxms = FUNC0(mxm);
	u16 version = (mxms[4] << 8) | mxms[5];
	switch (version ) {
	case 0x0200:
	case 0x0201:
	case 0x0300:
		return version;
	default:
		break;
	}

	FUNC1(mxm, "unknown version %d.%d\n", mxms[4], mxms[5]);
	return 0x0000;
}