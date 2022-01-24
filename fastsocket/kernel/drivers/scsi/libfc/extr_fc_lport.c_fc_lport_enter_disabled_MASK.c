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
struct fc_lport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_lport*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LPORT_ST_DISABLED ; 
 int /*<<< orphan*/  FUNC1 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_lport*) ; 

__attribute__((used)) static void FUNC5(struct fc_lport *lport)
{
	FUNC0(lport, "Entered disabled state from %s state\n",
		     FUNC2(lport));

	FUNC3(lport, LPORT_ST_DISABLED);
	FUNC4(lport);
	FUNC1(lport);
}