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

/* Variables and functions */
 int NULL_VECTOR ; 
 int FUNC0 (int) ; 

__attribute__((used)) static inline int FUNC1(int *dat)
{
	u32  bits, bitnum;
	int i;

	/* loop for all 256 bits */
	for (i = 7; i >= 0 ; i--) {
		bits = dat[i];
		if (bits) {
			bitnum = FUNC0(bits);
			return i * 32 + bitnum - 1;
		}
	}
	return NULL_VECTOR;
}