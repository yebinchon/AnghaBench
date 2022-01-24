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

/* Variables and functions */
 unsigned int FUNC0 (unsigned long) ; 

__attribute__((used)) static void FUNC1(unsigned long p) {
	unsigned int x1, x2;

	for (;;) {
		x1 = FUNC0(p);
		x2 = FUNC0(p);
		if ((x1 & 0x40404040) == (x2 & 0x40404040)) return;
	}
}