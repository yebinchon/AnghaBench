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
struct hfc_multi {int dummy; } ;

/* Variables and functions */
 unsigned short FUNC0 (struct hfc_multi*,int) ; 

inline unsigned short
FUNC1(struct hfc_multi *c)
{
	unsigned short addr;
	unsigned short highbit;

	addr = FUNC0(c, 0);
	highbit = FUNC0(c, 1);

	addr = addr | (highbit << 8);

	return addr & 0x1ff;
}