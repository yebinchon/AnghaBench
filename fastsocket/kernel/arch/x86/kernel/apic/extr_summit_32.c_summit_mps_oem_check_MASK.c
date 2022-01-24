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
struct mpc_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int use_cyclone ; 

__attribute__((used)) static int FUNC3(struct mpc_table *mpc, char *oem,
		char *productid)
{
	if (!FUNC2(oem, "IBM ENSW", 8) &&
			(!FUNC2(productid, "VIGIL SMP", 9)
			 || !FUNC2(productid, "EXA", 3)
			 || !FUNC2(productid, "RUTHLESS SMP", 12))){
		FUNC0("Summit based system");
		use_cyclone = 1; /*enable cyclone-timer*/
		FUNC1();
		return 1;
	}
	return 0;
}