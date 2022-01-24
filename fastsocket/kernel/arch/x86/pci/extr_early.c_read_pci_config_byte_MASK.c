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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int) ; 

u8 FUNC3(u8 bus, u8 slot, u8 func, u8 offset)
{
	u8 v;
	FUNC1(0x80000000 | (bus<<16) | (slot<<11) | (func<<8) | offset, 0xcf8);
	v = FUNC0(0xcfc + (offset&3));
	FUNC2("%x reading 1 from %x: %x\n", slot, offset, v);
	return v;
}