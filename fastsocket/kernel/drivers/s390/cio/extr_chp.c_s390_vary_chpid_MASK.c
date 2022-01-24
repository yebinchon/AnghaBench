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
struct chp_id {int /*<<< orphan*/  id; int /*<<< orphan*/  cssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct chp_id) ; 
 int /*<<< orphan*/  FUNC2 (struct chp_id,int) ; 
 int /*<<< orphan*/  FUNC3 (struct chp_id,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct chp_id chpid, int on)
{
	char dbf_text[15];
	int status;

	FUNC4(dbf_text, on?"varyon%x.%02x":"varyoff%x.%02x", chpid.cssid,
		chpid.id);
	FUNC0(2, dbf_text);

	status = FUNC1(chpid);
	if (!on && !status)
		return 0;

	FUNC3(chpid, on);
	FUNC2(chpid, on);
	return 0;
}