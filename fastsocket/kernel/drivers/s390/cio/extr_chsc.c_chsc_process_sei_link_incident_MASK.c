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
struct chsc_sei_area {int rs; int /*<<< orphan*/  ccdf; int /*<<< orphan*/  rsid; } ;
struct chp_id {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct chp_id*) ; 
 int /*<<< orphan*/  FUNC3 (struct chp_id) ; 

__attribute__((used)) static void FUNC4(struct chsc_sei_area *sei_area)
{
	struct chp_id chpid;
	int id;

	FUNC0(4, "chsc: link incident (rs=%02x, rs_id=%04x)\n",
		      sei_area->rs, sei_area->rsid);
	if (sei_area->rs != 4)
		return;
	id = FUNC1(sei_area->ccdf);
	if (id < 0)
		FUNC0(4, "chsc: link incident - invalid LIR\n");
	else {
		FUNC2(&chpid);
		chpid.id = id;
		FUNC3(chpid);
	}
}