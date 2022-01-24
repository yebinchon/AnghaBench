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
typedef  int u64 ;
struct TYPE_2__ {int rm; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
#define  IEEE754_RD 131 
#define  IEEE754_RN 130 
#define  IEEE754_RU 129 
#define  IEEE754_RZ 128 
 TYPE_1__ ieee754_csr ; 

__attribute__((used)) static u64 FUNC1(int sn, u64 xm)
{
	/* inexact must round of 3 bits
	 */
	if (xm & (FUNC0(3) - 1)) {
		switch (ieee754_csr.rm) {
		case IEEE754_RZ:
			break;
		case IEEE754_RN:
			xm += 0x3 + ((xm >> 3) & 1);
			/* xm += (xm&0x8)?0x4:0x3 */
			break;
		case IEEE754_RU:	/* toward +Infinity */
			if (!sn)	/* ?? */
				xm += 0x8;
			break;
		case IEEE754_RD:	/* toward -Infinity */
			if (sn)	/* ?? */
				xm += 0x8;
			break;
		}
	}
	return xm;
}