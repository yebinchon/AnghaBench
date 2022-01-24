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
struct ohci_iso_recv {scalar_t__ dma_mode; } ;
struct hpsb_iso_packet_info {int dummy; } ;
struct hpsb_iso {int infos; struct ohci_iso_recv* hostdata; } ;

/* Variables and functions */
 scalar_t__ BUFFER_FILL_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct ohci_iso_recv*,struct hpsb_iso_packet_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct ohci_iso_recv*,struct hpsb_iso_packet_info*) ; 

__attribute__((used)) static inline void FUNC2(struct hpsb_iso *iso, struct hpsb_iso_packet_info *info)
{
	struct ohci_iso_recv *recv = iso->hostdata;
	if (recv->dma_mode == BUFFER_FILL_MODE) {
		FUNC0(recv, info);
	} else {
		FUNC1(recv, info - iso->infos);
	}
}