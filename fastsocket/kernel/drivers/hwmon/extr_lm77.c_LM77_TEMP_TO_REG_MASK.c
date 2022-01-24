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
typedef  int s16 ;

/* Variables and functions */
 int /*<<< orphan*/  LM77_TEMP_MAX ; 
 int /*<<< orphan*/  LM77_TEMP_MIN ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline s16 FUNC1(int temp)
{
	int ntemp = FUNC0(temp, LM77_TEMP_MIN, LM77_TEMP_MAX);
	return (ntemp / 500) * 8;
}