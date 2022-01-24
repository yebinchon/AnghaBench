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
struct iwl_trans {int /*<<< orphan*/  dev; } ;
struct iwl_dma_ptr {size_t size; int /*<<< orphan*/  addr; int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct iwl_trans *trans,
				  struct iwl_dma_ptr *ptr, size_t size)
{
	if (FUNC0(ptr->addr))
		return -EINVAL;

	ptr->addr = FUNC1(trans->dev, size,
				       &ptr->dma, GFP_KERNEL);
	if (!ptr->addr)
		return -ENOMEM;
	ptr->size = size;
	return 0;
}