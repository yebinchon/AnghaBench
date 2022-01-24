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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 

void FUNC1(int port, u8 *mac)
{
	FUNC0(port, 0x308, 0x100, (mac[1] << 8) | mac[0]);
	FUNC0(port, 0x309, 0x100, (mac[3] << 8) | mac[2]);
	FUNC0(port, 0x30a, 0x100, (mac[5] << 8) | mac[4]);
}