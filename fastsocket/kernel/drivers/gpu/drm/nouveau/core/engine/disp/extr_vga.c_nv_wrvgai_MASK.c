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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(void *obj, int head, u16 port, u8 index, u8 value)
{
	if      (port == 0x03c4) FUNC3(obj, head, index, value);
	else if (port == 0x03ce) FUNC2(obj, head, index, value);
	else if (port == 0x03d4) FUNC1(obj, head, index, value);
	else FUNC0(obj, "unknown indexed vga port 0x%04x\n", port);
}