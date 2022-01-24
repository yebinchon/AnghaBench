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
struct saa7134_dev {int dummy; } ;
struct cliplist {int enable; int disable; int position; } ;
typedef  int __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(struct saa7134_dev *dev, int reg,
			struct cliplist *cl, int entries, char *name)
{
	__u8 winbits = 0;
	int i;

	for (i = 0; i < entries; i++) {
		winbits |= cl[i].enable;
		winbits &= ~cl[i].disable;
		if (i < 15 && cl[i].position == cl[i+1].position)
			continue;
		FUNC1(reg + 0, winbits);
		FUNC1(reg + 2, cl[i].position & 0xff);
		FUNC1(reg + 3, cl[i].position >> 8);
		FUNC0("clip: %s winbits=%02x pos=%d\n",
			name,winbits,cl[i].position);
		reg += 8;
	}
	for (; reg < 0x400; reg += 8) {
		FUNC1(reg+ 0, 0);
		FUNC1(reg + 1, 0);
		FUNC1(reg + 2, 0);
		FUNC1(reg + 3, 0);
	}
}