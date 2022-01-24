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
struct roundingData {int dummy; } ;
typedef  int /*<<< orphan*/  float64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct roundingData*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static float64 FUNC1(struct roundingData *roundData, float64 rFn, float64 rFm)
{
	return FUNC0(roundData, rFm, rFn);
}