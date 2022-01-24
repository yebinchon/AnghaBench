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
typedef  size_t pwm_freq_t ;

/* Variables and functions */
 int** lm93_pwm_map ; 

__attribute__((used)) static int FUNC0(u8 reg, pwm_freq_t freq)
{
	return lm93_pwm_map[freq][reg & 0x0f];
}