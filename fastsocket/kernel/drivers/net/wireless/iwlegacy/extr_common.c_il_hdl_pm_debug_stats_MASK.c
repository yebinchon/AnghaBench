#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  raw; } ;
struct TYPE_3__ {int /*<<< orphan*/  cmd; } ;
struct il_rx_pkt {TYPE_2__ u; TYPE_1__ hdr; int /*<<< orphan*/  len_n_flags; } ;
struct il_rx_buf {int dummy; } ;
struct il_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IL_DL_RADIO ; 
 int IL_RX_FRAME_SIZE_MSK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct il_rx_pkt* FUNC4 (struct il_rx_buf*) ; 

void
FUNC5(struct il_priv *il, struct il_rx_buf *rxb)
{
	struct il_rx_pkt *pkt = FUNC4(rxb);
	u32 len = FUNC3(pkt->len_n_flags) & IL_RX_FRAME_SIZE_MSK;
	FUNC0("Dumping %d bytes of unhandled notification for %s:\n", len,
		FUNC1(pkt->hdr.cmd));
	FUNC2(il, IL_DL_RADIO, pkt->u.raw, len);
}