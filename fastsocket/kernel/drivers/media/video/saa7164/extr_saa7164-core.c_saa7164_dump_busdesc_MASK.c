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
typedef  int /*<<< orphan*/  u32 ;
struct tmComResBusDescr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ResponseRead; int /*<<< orphan*/  ResponseWrite; int /*<<< orphan*/  CommandRead; int /*<<< orphan*/  CommandWrite; int /*<<< orphan*/  ResponseRing; int /*<<< orphan*/  CommandRing; } ;
struct saa7164_dev {TYPE_1__ busdesc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,TYPE_1__*,...) ; 

__attribute__((used)) static void FUNC1(struct saa7164_dev *dev)
{
	FUNC0(1, "@0x%p busdesc sizeof(struct tmComResBusDescr) = %d bytes\n",
		&dev->busdesc, (u32)sizeof(struct tmComResBusDescr));

	FUNC0(1, " .CommandRing   = 0x%016Lx\n", dev->busdesc.CommandRing);
	FUNC0(1, " .ResponseRing  = 0x%016Lx\n", dev->busdesc.ResponseRing);
	FUNC0(1, " .CommandWrite  = 0x%x\n", dev->busdesc.CommandWrite);
	FUNC0(1, " .CommandRead   = 0x%x\n", dev->busdesc.CommandRead);
	FUNC0(1, " .ResponseWrite = 0x%x\n", dev->busdesc.ResponseWrite);
	FUNC0(1, " .ResponseRead  = 0x%x\n", dev->busdesc.ResponseRead);
}