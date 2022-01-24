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

/* Variables and functions */
 int /*<<< orphan*/  LM93_RAMP_MAX ; 
 int /*<<< orphan*/  LM93_RAMP_MIN ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC1(int ramp)
{
	ramp = FUNC0(ramp, LM93_RAMP_MIN, LM93_RAMP_MAX);
	return (u8)((ramp + 2) / 5);
}