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
typedef  int /*<<< orphan*/  uint32_t ;
struct iscsi_bus_flash_session {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  shost_gendev; } ;

/* Variables and functions */
 struct device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flashnode_match_index ; 
 struct iscsi_bus_flash_session* FUNC1 (struct device*) ; 

__attribute__((used)) static struct iscsi_bus_flash_session *
FUNC2(struct Scsi_Host *shost, uint32_t idx)
{
	struct iscsi_bus_flash_session *fnode_sess = NULL;
	struct device *dev;

	dev = FUNC0(&shost->shost_gendev, &idx,
				flashnode_match_index);
	if (dev)
		fnode_sess = FUNC1(dev);

	return fnode_sess;
}