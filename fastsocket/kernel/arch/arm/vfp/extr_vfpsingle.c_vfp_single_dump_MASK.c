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
struct vfp_single {scalar_t__ sign; int /*<<< orphan*/  significand; int /*<<< orphan*/  exponent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(const char *str, struct vfp_single *s)
{
	FUNC0("VFP: %s: sign=%d exponent=%d significand=%08x\n",
		 str, s->sign != 0, s->exponent, s->significand);
}