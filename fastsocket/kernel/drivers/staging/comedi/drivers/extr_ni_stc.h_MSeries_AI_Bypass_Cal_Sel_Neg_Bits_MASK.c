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
 int MSeries_AI_Bypass_Cal_Sel_Pos_Mask ; 

__attribute__((used)) static inline unsigned FUNC0(int
							  calibration_source)
{
	return (calibration_source << 10) & MSeries_AI_Bypass_Cal_Sel_Pos_Mask;
}