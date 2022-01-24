#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct b43legacy_wldev {struct b43legacy_dfsentry* dfsentry; } ;
struct TYPE_9__ {struct b43legacy_dfsentry* log; } ;
struct TYPE_8__ {int /*<<< orphan*/  dentry; } ;
struct TYPE_7__ {int /*<<< orphan*/  dentry; } ;
struct TYPE_12__ {int /*<<< orphan*/  dentry; } ;
struct TYPE_11__ {int /*<<< orphan*/  dentry; } ;
struct TYPE_10__ {int /*<<< orphan*/  dentry; } ;
struct b43legacy_dfsentry {TYPE_3__ txstatlog; int /*<<< orphan*/  subdir; TYPE_2__ file_restart; TYPE_1__ file_txstat; TYPE_6__ file_shm; TYPE_5__ file_ucode_regs; TYPE_4__ file_tsf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_dfsentry*) ; 

void FUNC3(struct b43legacy_wldev *dev)
{
	struct b43legacy_dfsentry *e;

	if (!dev)
		return;
	e = dev->dfsentry;
	if (!e)
		return;
	FUNC0(dev);

	FUNC1(e->file_tsf.dentry);
	FUNC1(e->file_ucode_regs.dentry);
	FUNC1(e->file_shm.dentry);
	FUNC1(e->file_txstat.dentry);
	FUNC1(e->file_restart.dentry);

	FUNC1(e->subdir);
	FUNC2(e->txstatlog.log);
	FUNC2(e);
}