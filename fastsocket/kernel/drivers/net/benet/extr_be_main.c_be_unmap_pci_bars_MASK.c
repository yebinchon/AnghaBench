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
struct be_adapter {scalar_t__ db; int /*<<< orphan*/  pdev; scalar_t__ csr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct be_adapter *adapter)
{
	if (adapter->csr)
		FUNC0(adapter->pdev, adapter->csr);
	if (adapter->db)
		FUNC0(adapter->pdev, adapter->db);
}