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
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 (int) ; 

__attribute__((used)) static u8 FUNC1(u32 chain_bitmap)
{
	u8 res;
	res = (chain_bitmap & FUNC0(0)) >> 0;
	res += (chain_bitmap & FUNC0(1)) >> 1;
	res += (chain_bitmap & FUNC0(2)) >> 2;
	res += (chain_bitmap & FUNC0(3)) >> 3;
	return res;
}