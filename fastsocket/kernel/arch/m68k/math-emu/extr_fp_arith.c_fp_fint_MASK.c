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
struct fp_ext {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rnd; } ;

/* Variables and functions */
 TYPE_1__* FPDATA ; 
 int /*<<< orphan*/  PINSTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct fp_ext*,struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC2 (struct fp_ext*,int /*<<< orphan*/ ) ; 

struct fp_ext *
FUNC3(struct fp_ext *dest, struct fp_ext *src)
{
	FUNC0(PINSTR, "fint\n");

	FUNC1(dest, src);

	FUNC2(dest, FPDATA->rnd);

	return dest;
}