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
struct mlx4_counter {int /*<<< orphan*/  rx_frames; int /*<<< orphan*/  tx_frames; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  tx_bytes; } ;
struct ib_pma_portcounters {void* port_rcv_packets; void* port_xmit_packets; void* port_rcv_data; void* port_xmit_data; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct mlx4_counter *cnt,
					struct ib_pma_portcounters *pma_cnt)
{
	pma_cnt->port_xmit_data = FUNC1((FUNC0(cnt->tx_bytes)>>2));
	pma_cnt->port_rcv_data  = FUNC1((FUNC0(cnt->rx_bytes)>>2));
	pma_cnt->port_xmit_packets = FUNC1(FUNC0(cnt->tx_frames));
	pma_cnt->port_rcv_packets  = FUNC1(FUNC0(cnt->rx_frames));
}