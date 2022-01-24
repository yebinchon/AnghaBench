#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
typedef  int u_char ;
struct TYPE_9__ {int tx_descr; int tx_len; TYPE_3__* tx_p; } ;
struct TYPE_10__ {TYPE_4__ hwm; } ;
struct TYPE_6__ {TYPE_3__** tx; } ;
struct TYPE_7__ {int /*<<< orphan*/  mac_ring_is_up; TYPE_1__ fp; } ;
struct s_smc {TYPE_5__ os; TYPE_2__ hw; } ;
struct TYPE_8__ {int tx_free; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int FC_ASYNC_LLC ; 
 int FC_LLC_PRIOR ; 
#define  FC_SMT_INFO 131 
#define  FC_SMT_LAN_LOC 130 
#define  FC_SMT_LOC 129 
#define  FC_SMT_NSA 128 
 int FC_SYNC_BIT ; 
 int /*<<< orphan*/  HWM_E0010 ; 
 int /*<<< orphan*/  HWM_E0010_MSG ; 
 int LAN_TX ; 
 int LOC_TX ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 
 int OUT_OF_TXD ; 
 int QUEUE_A0 ; 
 int RING_DOWN ; 
 int /*<<< orphan*/  FUNC2 (struct s_smc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TX_DESCRIPTOR ; 
 int /*<<< orphan*/  FUNC3 (struct s_smc*) ; 

int FUNC4(struct s_smc *smc, u_char fc, int frag_count, int frame_len,
		int frame_status)
{
	FUNC1("THiB",fc,frag_count,frame_len) ;
	smc->os.hwm.tx_p = smc->hw.fp.tx[frame_status & QUEUE_A0] ;
	smc->os.hwm.tx_descr = TX_DESCRIPTOR | (((u_long)(frame_len-1)&3)<<27) ;
	smc->os.hwm.tx_len = frame_len ;
	FUNC0("hwm_tx_init: fc = %x, len = %d",fc,frame_len,3) ;
	if ((fc & ~(FC_SYNC_BIT|FC_LLC_PRIOR)) == FC_ASYNC_LLC) {
		frame_status |= LAN_TX ;
	}
	else {
		switch (fc) {
		case FC_SMT_INFO :
		case FC_SMT_NSA :
			frame_status |= LAN_TX ;
			break ;
		case FC_SMT_LOC :
			frame_status |= LOC_TX ;
			break ;
		case FC_SMT_LAN_LOC :
			frame_status |= LAN_TX | LOC_TX ;
			break ;
		default :
			FUNC2(smc,HWM_E0010,HWM_E0010_MSG) ;
		}
	}
	if (!smc->hw.mac_ring_is_up) {
		frame_status &= ~LAN_TX ;
		frame_status |= RING_DOWN ;
		FUNC0("Ring is down: terminate LAN_TX",0,0,2) ;
	}
	if (frag_count > smc->os.hwm.tx_p->tx_free) {
#ifndef	NDIS_OS2
		FUNC3(smc) ;
		if (frag_count > smc->os.hwm.tx_p->tx_free) {
			FUNC0("Out of TxDs, terminate LAN_TX",0,0,2) ;
			frame_status &= ~LAN_TX ;
			frame_status |= OUT_OF_TXD ;
		}
#else
		DB_TX("Out of TxDs, terminate LAN_TX",0,0,2) ;
		frame_status &= ~LAN_TX ;
		frame_status |= OUT_OF_TXD ;
#endif
	}
	FUNC0("frame_status = %x",frame_status,0,3) ;
	FUNC1("THiE",frame_status,smc->os.hwm.tx_p->tx_free,0) ;
	return(frame_status) ;
}