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
typedef  int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ctlr_info {int /*<<< orphan*/  lock; TYPE_1__* cfgtable; } ;
struct Scsi_Host {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  HeartBeat; } ;

/* Variables and functions */
 struct Scsi_Host* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct ctlr_info* FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
	struct device_attribute *attr, char *buf)
{
	struct ctlr_info *h;
	struct Scsi_Host *shost = FUNC0(dev);
	u32 heartbeat;
	unsigned long flags;

	h = FUNC2(shost);
	FUNC4(&h->lock, flags);
	heartbeat = FUNC1(&h->cfgtable->HeartBeat);
	FUNC5(&h->lock, flags);
	return FUNC3(buf, 20, "0x%08x\n", heartbeat);
}