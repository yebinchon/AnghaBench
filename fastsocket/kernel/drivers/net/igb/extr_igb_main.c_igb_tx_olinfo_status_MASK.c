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
struct igb_ring {int reg_idx; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 unsigned int E1000_ADVTXD_PAYLEN_SHIFT ; 
 int E1000_TXD_POPTS_IXSM ; 
 int E1000_TXD_POPTS_TXSM ; 
 int /*<<< orphan*/  IGB_RING_FLAG_TX_CTX_IDX ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IGB_TX_FLAGS_CSUM ; 
 int /*<<< orphan*/  IGB_TX_FLAGS_IPV4 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __le32 FUNC3(u32 tx_flags, unsigned int paylen,
				   struct igb_ring *tx_ring)
{
	u32 olinfo_status = paylen << E1000_ADVTXD_PAYLEN_SHIFT;

	/* 82575 requires a unique index per ring */
	if (FUNC2(IGB_RING_FLAG_TX_CTX_IDX, &tx_ring->flags))
		olinfo_status |= tx_ring->reg_idx << 4;

	/* insert L4 checksum */
	olinfo_status |= FUNC0(tx_flags,
				      IGB_TX_FLAGS_CSUM,
				      (E1000_TXD_POPTS_TXSM << 8));

	/* insert IPv4 checksum */
	olinfo_status |= FUNC0(tx_flags,
				      IGB_TX_FLAGS_IPV4,
				      (E1000_TXD_POPTS_IXSM << 8));

	return FUNC1(olinfo_status);
}