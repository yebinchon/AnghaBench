#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fp_ext {int sign; } ;
struct TYPE_2__ {struct fp_ext* temp; } ;

/* Variables and functions */
 TYPE_1__* FPDATA ; 
 int /*<<< orphan*/  PINSTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct fp_ext* FUNC1 (struct fp_ext*,struct fp_ext*) ; 

struct fp_ext *
FUNC2(struct fp_ext *dest, struct fp_ext *src)
{
	FUNC0(PINSTR, "fcmp ");

	FPDATA->temp[1] = *dest;
	src->sign = !src->sign;
	return FUNC1(&FPDATA->temp[1], src);
}