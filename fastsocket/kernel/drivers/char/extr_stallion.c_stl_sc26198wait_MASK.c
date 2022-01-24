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
struct stlport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TSTR ; 
 int /*<<< orphan*/  FUNC0 (char*,struct stlport*) ; 
 int /*<<< orphan*/  FUNC1 (struct stlport*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct stlport *portp)
{
	int	i;

	FUNC0("stl_sc26198wait(portp=%p)\n", portp);

	if (portp == NULL)
		return;

	for (i = 0; i < 20; i++)
		FUNC1(portp, TSTR);
}