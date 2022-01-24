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
typedef  scalar_t__ ulong ;
typedef  int /*<<< orphan*/  u32 ;
struct aac_init {int /*<<< orphan*/  HostElapsedSeconds; } ;
struct aac_dev {scalar_t__ init_pa; struct aac_init* init; scalar_t__ host_rrq_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  INIT_STRUCT_BASE_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct aac_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct aac_dev *dev)
{
	struct aac_init *init;

	 /* reset host_rrq_idx first */
	dev->host_rrq_idx = 0;

	init = dev->init;
	init->HostElapsedSeconds = FUNC0(FUNC1());

	/* We can only use a 32 bit address here */
	FUNC2(dev, INIT_STRUCT_BASE_ADDRESS, (u32)(ulong)dev->init_pa,
	  0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
}