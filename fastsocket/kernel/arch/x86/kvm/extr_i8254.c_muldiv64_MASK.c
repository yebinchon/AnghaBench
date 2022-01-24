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
typedef  int u64 ;
typedef  void* u32 ;

/* Variables and functions */
 void* FUNC0 (int,void*) ; 
 int FUNC1 (int,void*) ; 

__attribute__((used)) static u64 FUNC2(u64 a, u32 b, u32 c)
{
	union {
		u64 ll;
		struct {
			u32 low, high;
		} l;
	} u, res;
	u64 rl, rh;

	u.ll = a;
	rl = (u64)u.l.low * (u64)b;
	rh = (u64)u.l.high * (u64)b;
	rh += (rl >> 32);
	res.l.high = FUNC0(rh, c);
	res.l.low = FUNC0(((FUNC1(rh, c) << 32) + (rl & 0xffffffff)), c);
	return res.ll;
}