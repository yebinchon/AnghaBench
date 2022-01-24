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
struct atp_unit {int* ioport; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short,unsigned int) ; 

__attribute__((used)) static unsigned char FUNC2(struct atp_unit *dev, unsigned short int *val)
{
	unsigned int tmport;
	unsigned short int i, k;
	unsigned char j;

	tmport = dev->ioport[0] + 0x1c;
	FUNC1(*val, tmport);
FUN_D7:
	for (i = 0; i < 10; i++) {	/* stable >= bus settle delay(400 ns)  */
		k = FUNC0(tmport);
		j = (unsigned char) (k >> 8);
		if ((k & 0x8000) != 0) {	/* DB7 all release?    */
			goto FUN_D7;
		}
	}
	*val |= 0x4000;		/* assert DB6           */
	FUNC1(*val, tmport);
	*val &= 0xdfff;		/* assert DB5           */
	FUNC1(*val, tmport);
FUN_D5:
	for (i = 0; i < 10; i++) {	/* stable >= bus settle delay(400 ns) */
		if ((FUNC0(tmport) & 0x2000) != 0) {	/* DB5 all release?       */
			goto FUN_D5;
		}
	}
	*val |= 0x8000;		/* no DB4-0, assert DB7    */
	*val &= 0xe0ff;
	FUNC1(*val, tmport);
	*val &= 0xbfff;		/* release DB6             */
	FUNC1(*val, tmport);
FUN_D6:
	for (i = 0; i < 10; i++) {	/* stable >= bus settle delay(400 ns)  */
		if ((FUNC0(tmport) & 0x4000) != 0) {	/* DB6 all release?  */
			goto FUN_D6;
		}
	}

	return j;
}