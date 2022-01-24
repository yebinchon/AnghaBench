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
struct vmxnet3_adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ VMXNET3_REG_IMR ; 
 int /*<<< orphan*/  FUNC0 (struct vmxnet3_adapter*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct vmxnet3_adapter *adapter, unsigned intr_idx)
{
	FUNC0(adapter, VMXNET3_REG_IMR + intr_idx * 8, 0);
}