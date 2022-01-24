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
typedef  int float32 ;
typedef  int flag ;
typedef  scalar_t__ bits32 ;

/* Variables and functions */
 int FUNC0 (int) ; 

__attribute__((used)) static inline flag FUNC1(float32 a, float32 b)
{
	flag aSign, bSign;

	aSign = FUNC0(a);
	bSign = FUNC0(b);
	if (aSign != bSign)
		return aSign && ((bits32) ((a | b) << 1) != 0);
	return (a != b) && (aSign ^ (a < b));
}