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
struct mpc_table {scalar_t__ oemptr; } ;
struct mpc_oemtable {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int es7000_mps_ret ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static int FUNC3(struct mpc_table *mpc, char *oem,
		char *productid)
{
	int ret = 0;

	if (mpc->oemptr) {
		struct mpc_oemtable *oem_table =
			(struct mpc_oemtable *)mpc->oemptr;

		if (!FUNC2(oem, "UNISYS", 6))
			ret = FUNC1((char *)oem_table);
	}

	es7000_mps_ret = ret;

	return ret && !FUNC0();
}