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
struct av7110 {int /*<<< orphan*/  (* recover ) (struct av7110*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct av7110*) ; 
 int /*<<< orphan*/  FUNC1 (struct av7110*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,struct av7110*) ; 
 int /*<<< orphan*/  FUNC3 (struct av7110*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct av7110*) ; 
 int /*<<< orphan*/  FUNC6 (struct av7110*) ; 

__attribute__((used)) static void FUNC7(struct av7110 *av7110)
{
	FUNC2(4, "%p\n",av7110);

	FUNC0(av7110);
	FUNC4(100);

	FUNC3(av7110);

	/* card-specific recovery */
	if (av7110->recover)
		av7110->recover(av7110);

	FUNC5(av7110);

#if defined(CONFIG_INPUT_EVDEV) || defined(CONFIG_INPUT_EVDEV_MODULE)
	av7110_check_ir_config(av7110, true);
#endif
}