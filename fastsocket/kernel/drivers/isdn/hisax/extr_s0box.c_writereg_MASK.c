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
typedef  int u_char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned int) ; 

__attribute__((used)) static inline void
FUNC1(unsigned int padr, signed int addr, u_char off, u_char val) {
	FUNC0(0x1c,padr+2);
	FUNC0(0x14,padr+2);
	FUNC0((addr+off)&0x7f,padr);
	FUNC0(0x16,padr+2);
	FUNC0(val,padr);
	FUNC0(0x17,padr+2);
	FUNC0(0x14,padr+2);
	FUNC0(0x1c,padr+2);
}