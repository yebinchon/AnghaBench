#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  upper; int /*<<< orphan*/  lower; } ;
union u64bit {TYPE_2__ val32; scalar_t__ val; } ;
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct ctlr_info {int /*<<< orphan*/  pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  upper; int /*<<< orphan*/  lower; } ;
struct TYPE_6__ {int Len; TYPE_1__ Addr; } ;
struct CommandList {int cmdindex; struct ctlr_info* h; TYPE_3__ ErrDesc; scalar_t__ busaddr; int /*<<< orphan*/  list; struct CommandList* err_info; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct CommandList*,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,struct CommandList*,scalar_t__) ; 

__attribute__((used)) static struct CommandList *FUNC4(struct ctlr_info *h)
{
	struct CommandList *c;
	union u64bit temp64;
	dma_addr_t cmd_dma_handle, err_dma_handle;

	c = FUNC2(h->pdev, sizeof(*c), &cmd_dma_handle);
	if (c == NULL)
		return NULL;
	FUNC1(c, 0, sizeof(*c));

	c->cmdindex = -1;

	c->err_info = FUNC2(h->pdev, sizeof(*c->err_info),
		    &err_dma_handle);

	if (c->err_info == NULL) {
		FUNC3(h->pdev,
			sizeof(*c), c, cmd_dma_handle);
		return NULL;
	}
	FUNC1(c->err_info, 0, sizeof(*c->err_info));

	FUNC0(&c->list);
	c->busaddr = (u32) cmd_dma_handle;
	temp64.val = (u64) err_dma_handle;
	c->ErrDesc.Addr.lower = temp64.val32.lower;
	c->ErrDesc.Addr.upper = temp64.val32.upper;
	c->ErrDesc.Len = sizeof(*c->err_info);

	c->h = h;
	return c;
}