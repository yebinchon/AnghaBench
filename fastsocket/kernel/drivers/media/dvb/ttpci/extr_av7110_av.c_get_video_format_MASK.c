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
struct av7110 {int sinfo; } ;

/* Variables and functions */
 int FUNC0 (struct av7110*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/ * sw2mode ; 

__attribute__((used)) static int FUNC2(struct av7110 *av7110, u8 *buf, int count)
{
	int i;
	int hsize, vsize;
	int sw;
	u8 *p;
	int ret = 0;

	FUNC1(2, "av7110:%p, \n", av7110);

	if (av7110->sinfo)
		return 0;
	for (i = 7; i < count - 10; i++) {
		p = buf + i;
		if (p[0] || p[1] || p[2] != 0x01 || p[3] != 0xb3)
			continue;
		p += 4;
		hsize = ((p[1] &0xF0) >> 4) | (p[0] << 4);
		vsize = ((p[1] &0x0F) << 8) | (p[2]);
		sw = (p[3] & 0x0F);
		ret = FUNC0(av7110, sw2mode[sw]);
		if (!ret) {
			FUNC1(2, "playback %dx%d fr=%d\n", hsize, vsize, sw);
			av7110->sinfo = 1;
		}
		break;
	}
	return ret;
}