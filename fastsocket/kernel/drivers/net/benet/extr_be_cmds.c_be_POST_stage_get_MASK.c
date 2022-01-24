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
typedef  int u32 ;
typedef  int u16 ;
struct be_adapter {int /*<<< orphan*/  pdev; scalar_t__ csr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct be_adapter*) ; 
 int POST_STAGE_MASK ; 
 scalar_t__ SLIPORT_SEMAPHORE_OFFSET_BEx ; 
 int /*<<< orphan*/  SLIPORT_SEMAPHORE_OFFSET_SH ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static u16 FUNC3(struct be_adapter *adapter)
{
	u32 sem;

	if (FUNC0(adapter))
		sem  = FUNC1(adapter->csr + SLIPORT_SEMAPHORE_OFFSET_BEx);
	else
		FUNC2(adapter->pdev,
				      SLIPORT_SEMAPHORE_OFFSET_SH, &sem);

	return sem & POST_STAGE_MASK;
}