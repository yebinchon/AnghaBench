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
typedef  int /*<<< orphan*/  u16 ;
struct bfi_phy_write_req_s {int last; int /*<<< orphan*/  alen; int /*<<< orphan*/  mh; void* length; void* offset; int /*<<< orphan*/  instance; } ;
struct TYPE_2__ {scalar_t__ msg; } ;
struct bfa_phy_s {int addr_off; int offset; scalar_t__ residue; int ubuf; TYPE_1__ mb; int /*<<< orphan*/  ioc; scalar_t__ dbuf_kva; int /*<<< orphan*/  dbuf_pa; int /*<<< orphan*/  instance; } ;

/* Variables and functions */
 scalar_t__ BFA_PHY_DMA_BUF_SZ ; 
 int /*<<< orphan*/  BFI_MC_PHY ; 
 int /*<<< orphan*/  BFI_PHY_H2I_WRITE_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(void *cbarg)
{
	struct bfa_phy_s *phy = cbarg;
	struct bfi_phy_write_req_s *msg =
			(struct bfi_phy_write_req_s *) phy->mb.msg;
	u32	len;
	u16	*buf, *dbuf;
	int	i, sz;

	msg->instance = phy->instance;
	msg->offset = FUNC5(phy->addr_off + phy->offset);
	len = (phy->residue < BFA_PHY_DMA_BUF_SZ) ?
			phy->residue : BFA_PHY_DMA_BUF_SZ;
	msg->length = FUNC5(len);

	/* indicate if it's the last msg of the whole write operation */
	msg->last = (len == phy->residue) ? 1 : 0;

	FUNC3(msg->mh, BFI_MC_PHY, BFI_PHY_H2I_WRITE_REQ,
		FUNC2(phy->ioc));
	FUNC0(&msg->alen, len, phy->dbuf_pa);

	buf = (u16 *) (phy->ubuf + phy->offset);
	dbuf = (u16 *)phy->dbuf_kva;
	sz = len >> 1;
	for (i = 0; i < sz; i++)
		buf[i] = FUNC4(dbuf[i]);

	FUNC1(phy->ioc, &phy->mb);

	phy->residue -= len;
	phy->offset += len;
}