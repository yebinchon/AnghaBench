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
 unsigned char FUNC0 (unsigned long) ; 

void FUNC1(unsigned long addr, void *dst, unsigned long count) {
        while (count) {
                count -= 1;
                *(unsigned char *)dst = FUNC0(addr);
                dst += 1;
                addr += 1;
        }
}