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
typedef  void* u16 ;
struct ssb_sprom {int dummy; } ;
struct TYPE_2__ {int revision; void* et1mdcport; void* et0mdcport; void* et1phyaddr; void* et0phyaddr; int /*<<< orphan*/  et1mac; int /*<<< orphan*/  et0mac; void* rev; void* type; } ;
struct ssb_init_invariants {TYPE_1__ sprom; TYPE_1__ boardinfo; } ;
struct ssb_bus {int dummy; } ;
struct ssb_boardinfo {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ssb_bus *bus,
				   struct ssb_init_invariants *iv)
{
	char buf[100];

	/* Fill boardinfo structure */
	FUNC1(&(iv->boardinfo), 0 , sizeof(struct ssb_boardinfo));

	if (FUNC0("boardvendor", buf, sizeof(buf)) >= 0)
		iv->boardinfo.type = (u16)FUNC2(buf, NULL, 0);
	if (FUNC0("boardtype", buf, sizeof(buf)) >= 0)
		iv->boardinfo.type = (u16)FUNC2(buf, NULL, 0);
	if (FUNC0("boardrev", buf, sizeof(buf)) >= 0)
		iv->boardinfo.rev = (u16)FUNC2(buf, NULL, 0);

	/* Fill sprom structure */
	FUNC1(&(iv->sprom), 0, sizeof(struct ssb_sprom));
	iv->sprom.revision = 3;

	if (FUNC0("et0macaddr", buf, sizeof(buf)) >= 0)
		FUNC3(buf, iv->sprom.et0mac);
	if (FUNC0("et1macaddr", buf, sizeof(buf)) >= 0)
		FUNC3(buf, iv->sprom.et1mac);
	if (FUNC0("et0phyaddr", buf, sizeof(buf)) >= 0)
		iv->sprom.et0phyaddr = FUNC2(buf, NULL, 10);
	if (FUNC0("et1phyaddr", buf, sizeof(buf)) >= 0)
		iv->sprom.et1phyaddr = FUNC2(buf, NULL, 10);
	if (FUNC0("et0mdcport", buf, sizeof(buf)) >= 0)
		iv->sprom.et0mdcport = FUNC2(buf, NULL, 10);
	if (FUNC0("et1mdcport", buf, sizeof(buf)) >= 0)
		iv->sprom.et1mdcport = FUNC2(buf, NULL, 10);

	return 0;
}