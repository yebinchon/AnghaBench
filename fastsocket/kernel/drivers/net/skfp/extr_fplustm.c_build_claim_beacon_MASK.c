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
typedef  scalar_t__ u_long ;
typedef  int u_int ;
struct TYPE_4__ {scalar_t__ rx1_fifo_start; scalar_t__ rbc_ram_start; } ;
struct fddi_mac_sf {scalar_t__ mac_info; void* mac_dest; void* mac_source; void* mac_fc; } ;
struct TYPE_5__ {TYPE_1__ fifo; struct fddi_mac_sf mac_sfb; } ;
struct TYPE_6__ {TYPE_2__ fp; } ;
struct s_smc {TYPE_3__ hw; } ;
struct fddi_mac {int dummy; } ;

/* Variables and functions */
 scalar_t__ BEACON_FRAME_OFF ; 
 scalar_t__ BEACON_INFO ; 
 scalar_t__ CLAIM_FRAME_OFF ; 
 scalar_t__ DBEACON_FRAME_OFF ; 
 scalar_t__ DBEACON_INFO ; 
 void* FC_BEACON ; 
 void* FC_CLAIM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FM_EACB ; 
 int /*<<< orphan*/  FM_RPXSF ; 
 int /*<<< orphan*/  FM_SABC ; 
 int /*<<< orphan*/  FM_SACL ; 
 int /*<<< orphan*/  FM_WPXSF ; 
 void* MA ; 
 int TX_DESCRIPTOR ; 
 int /*<<< orphan*/  FUNC1 (struct s_smc*,int,struct fddi_mac*,scalar_t__,int) ; 
 void* dbeacon_multi ; 
 void* null_addr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static void FUNC4(struct s_smc *smc, u_long t_request)
{
	u_int	td ;
	int	len ;
	struct fddi_mac_sf *mac ;

	/*
	 * build claim packet
	 */
	len = 17 ;
	td = TX_DESCRIPTOR | ((((u_int)len-1)&3)<<27) ;
	mac = &smc->hw.fp.mac_sfb ;
	mac->mac_fc = FC_CLAIM ;
	/* DA == SA in claim frame */
	mac->mac_source = mac->mac_dest = MA ;
	/* 2's complement */
	FUNC3((char *)mac->mac_info,(int)t_request) ;

	FUNC1(smc,td,(struct fddi_mac *)mac,
		smc->hw.fp.fifo.rbc_ram_start + CLAIM_FRAME_OFF,len) ;
	/* set CLAIM start pointer */
	FUNC2(FUNC0(FM_SACL),smc->hw.fp.fifo.rbc_ram_start + CLAIM_FRAME_OFF) ;

	/*
	 * build beacon packet
	 */
	len = 17 ;
	td = TX_DESCRIPTOR | ((((u_int)len-1)&3)<<27) ;
	mac->mac_fc = FC_BEACON ;
	mac->mac_source = MA ;
	mac->mac_dest = null_addr ;		/* DA == 0 in beacon frame */
	FUNC3((char *) mac->mac_info,((int)BEACON_INFO<<24) + 0 ) ;

	FUNC1(smc,td,(struct fddi_mac *)mac,
		smc->hw.fp.fifo.rbc_ram_start + BEACON_FRAME_OFF,len) ;
	/* set beacon start pointer */
	FUNC2(FUNC0(FM_SABC),smc->hw.fp.fifo.rbc_ram_start + BEACON_FRAME_OFF) ;

	/*
	 * build directed beacon packet
	 * contains optional UNA
	 */
	len = 23 ;
	td = TX_DESCRIPTOR | ((((u_int)len-1)&3)<<27) ;
	mac->mac_fc = FC_BEACON ;
	mac->mac_source = MA ;
	mac->mac_dest = dbeacon_multi ;		/* multicast */
	FUNC3((char *) mac->mac_info,((int)DBEACON_INFO<<24) + 0 ) ;
	FUNC3((char *) mac->mac_info+4,0) ;
	FUNC3((char *) mac->mac_info+8,0) ;

	FUNC1(smc,td,(struct fddi_mac *)mac,
		smc->hw.fp.fifo.rbc_ram_start + DBEACON_FRAME_OFF,len) ;

	/* end of claim/beacon queue */
	FUNC2(FUNC0(FM_EACB),smc->hw.fp.fifo.rx1_fifo_start-1) ;

	FUNC2(FUNC0(FM_WPXSF),0) ;
	FUNC2(FUNC0(FM_RPXSF),0) ;
}