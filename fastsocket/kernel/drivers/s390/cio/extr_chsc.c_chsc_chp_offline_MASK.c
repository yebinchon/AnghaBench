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
struct chp_id {int cssid; int id; } ;
struct chp_link {struct chp_id chpid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (struct chp_id) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct chp_link*) ; 
 int /*<<< orphan*/  FUNC4 (struct chp_link*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  s390_subchannel_remove_chpid ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int,int) ; 

void FUNC6(struct chp_id chpid)
{
	char dbf_txt[15];
	struct chp_link link;

	FUNC5(dbf_txt, "chpr%x.%02x", chpid.cssid, chpid.id);
	FUNC0(2, dbf_txt);

	if (FUNC1(chpid) <= 0)
		return;
	FUNC4(&link, 0, sizeof(struct chp_link));
	link.chpid = chpid;
	/* Wait until previous actions have settled. */
	FUNC2();
	FUNC3(s390_subchannel_remove_chpid, NULL, &link);
}