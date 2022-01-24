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
struct TYPE_2__ {int /*<<< orphan*/  cpic_civr; } ;

/* Variables and functions */
 TYPE_1__* cpic_reg ; 
 int /*<<< orphan*/  cpm_pic_host ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

int FUNC3(void)
{
	int cpm_vec;

	/* Get the vector by setting the ACK bit and then reading
	 * the register.
	 */
	FUNC2(&cpic_reg->cpic_civr, 1);
	cpm_vec = FUNC0(&cpic_reg->cpic_civr);
	cpm_vec >>= 11;

	return FUNC1(cpm_pic_host, cpm_vec);
}