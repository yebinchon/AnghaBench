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
typedef  scalar_t__ u32 ;
struct bfi_flash_read_req {int /*<<< orphan*/  alen; int /*<<< orphan*/  mh; void* length; void* offset; int /*<<< orphan*/  instance; void* type; } ;
struct TYPE_2__ {scalar_t__ msg; } ;
struct bfa_flash {scalar_t__ residue; TYPE_1__ mb; int /*<<< orphan*/  ioc; int /*<<< orphan*/  dbuf_pa; scalar_t__ offset; scalar_t__ addr_off; int /*<<< orphan*/  instance; scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ BFA_FLASH_DMA_BUF_SZ ; 
 int /*<<< orphan*/  BFI_FLASH_H2I_READ_REQ ; 
 int /*<<< orphan*/  BFI_MC_FLASH ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void *cbarg)
{
	struct bfa_flash *flash = cbarg;
	struct bfi_flash_read_req *msg =
			(struct bfi_flash_read_req *) flash->mb.msg;
	u32	len;

	msg->type = FUNC0(flash->type);
	msg->instance = flash->instance;
	msg->offset = FUNC0(flash->addr_off + flash->offset);
	len = (flash->residue < BFA_FLASH_DMA_BUF_SZ) ?
	       flash->residue : BFA_FLASH_DMA_BUF_SZ;
	msg->length = FUNC0(len);
	FUNC4(msg->mh, BFI_MC_FLASH, BFI_FLASH_H2I_READ_REQ,
		    FUNC2(flash->ioc));
	FUNC1(&msg->alen, len, flash->dbuf_pa);
	FUNC3(flash->ioc, &flash->mb, NULL, NULL);
}