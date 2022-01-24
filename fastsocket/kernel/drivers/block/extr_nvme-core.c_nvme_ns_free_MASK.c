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
struct nvme_ns {int /*<<< orphan*/  queue; TYPE_1__* disk; } ;
struct TYPE_2__ {int first_minor; } ;

/* Variables and functions */
 int NVME_MINORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_ns*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct nvme_ns *ns)
{
	int index = ns->disk->first_minor / NVME_MINORS;
	FUNC3(ns->disk);
	FUNC2(index);
	FUNC0(ns->queue);
	FUNC1(ns);
}