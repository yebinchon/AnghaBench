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
struct fp_ext {int exp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fp_ext*) ; 
 scalar_t__ FUNC1 (struct fp_ext*) ; 
 int /*<<< orphan*/  PINSTR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct fp_ext*,struct fp_ext*) ; 

struct fp_ext *
FUNC4(struct fp_ext *dest, struct fp_ext *src)
{
	FUNC2(PINSTR, "fgetman\n");

	FUNC3(dest, src);

	if (FUNC1(dest))
		return dest;

	if (FUNC0(dest))
		return dest;

	dest->exp = 0x3FFF;

	return dest;
}