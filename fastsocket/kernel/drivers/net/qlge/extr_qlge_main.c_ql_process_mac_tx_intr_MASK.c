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
struct tx_ring_desc {TYPE_1__* skb; int /*<<< orphan*/  map_cnt; } ;
struct tx_ring {int /*<<< orphan*/  tx_count; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_bytes; struct tx_ring_desc* q; } ;
struct ql_adapter {int /*<<< orphan*/  ndev; struct tx_ring* tx_ring; } ;
struct ob_mac_iocb_rsp {size_t txq_idx; size_t tid; int flags1; } ;
struct TYPE_2__ {scalar_t__ len; } ;

/* Variables and functions */
 int OB_MAC_IOCB_RSP_B ; 
 int OB_MAC_IOCB_RSP_E ; 
 int OB_MAC_IOCB_RSP_L ; 
 int OB_MAC_IOCB_RSP_P ; 
 int OB_MAC_IOCB_RSP_S ; 
 int /*<<< orphan*/  FUNC0 (struct ob_mac_iocb_rsp*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ql_adapter*,struct tx_ring_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tx_done ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct ql_adapter *qdev,
				   struct ob_mac_iocb_rsp *mac_rsp)
{
	struct tx_ring *tx_ring;
	struct tx_ring_desc *tx_ring_desc;

	FUNC0(mac_rsp);
	tx_ring = &qdev->tx_ring[mac_rsp->txq_idx];
	tx_ring_desc = &tx_ring->q[mac_rsp->tid];
	FUNC4(qdev, tx_ring_desc, tx_ring_desc->map_cnt);
	tx_ring->tx_bytes += (tx_ring_desc->skb)->len;
	tx_ring->tx_packets++;
	FUNC2(tx_ring_desc->skb);
	tx_ring_desc->skb = NULL;

	if (FUNC5(mac_rsp->flags1 & (OB_MAC_IOCB_RSP_E |
					OB_MAC_IOCB_RSP_S |
					OB_MAC_IOCB_RSP_L |
					OB_MAC_IOCB_RSP_P | OB_MAC_IOCB_RSP_B))) {
		if (mac_rsp->flags1 & OB_MAC_IOCB_RSP_E) {
			FUNC3(qdev, tx_done, qdev->ndev,
				   "Total descriptor length did not match transfer length.\n");
		}
		if (mac_rsp->flags1 & OB_MAC_IOCB_RSP_S) {
			FUNC3(qdev, tx_done, qdev->ndev,
				   "Frame too short to be valid, not sent.\n");
		}
		if (mac_rsp->flags1 & OB_MAC_IOCB_RSP_L) {
			FUNC3(qdev, tx_done, qdev->ndev,
				   "Frame too long, but sent anyway.\n");
		}
		if (mac_rsp->flags1 & OB_MAC_IOCB_RSP_B) {
			FUNC3(qdev, tx_done, qdev->ndev,
				   "PCI backplane error. Frame not sent.\n");
		}
	}
	FUNC1(&tx_ring->tx_count);
}