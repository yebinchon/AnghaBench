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
struct tmComResInfo {int /*<<< orphan*/  seqno; int /*<<< orphan*/  controlselector; int /*<<< orphan*/  command; int /*<<< orphan*/  size; int /*<<< orphan*/  flags; int /*<<< orphan*/  id; } ;
struct saa7164_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBGLVL_BUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 

void FUNC1(struct saa7164_dev *dev, struct tmComResInfo* m,
	void *buf)
{
	FUNC0(DBGLVL_BUS, "Dumping msg structure:\n");
	FUNC0(DBGLVL_BUS, " .id               = %d\n",   m->id);
	FUNC0(DBGLVL_BUS, " .flags            = 0x%x\n", m->flags);
	FUNC0(DBGLVL_BUS, " .size             = 0x%x\n", m->size);
	FUNC0(DBGLVL_BUS, " .command          = 0x%x\n", m->command);
	FUNC0(DBGLVL_BUS, " .controlselector  = 0x%x\n", m->controlselector);
	FUNC0(DBGLVL_BUS, " .seqno            = %d\n",   m->seqno);
	if (buf)
		FUNC0(DBGLVL_BUS, " .buffer (ignored)\n");
}