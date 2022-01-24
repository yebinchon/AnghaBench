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
struct hpsb_iso {struct ohci_iso_recv* hostdata; } ;

/* Variables and functions */
 scalar_t__ BUFFER_FILL_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct hpsb_iso*,struct ohci_iso_recv*) ; 
 int /*<<< orphan*/  FUNC1 (struct hpsb_iso*,struct ohci_iso_recv*) ; 

__attribute__((used)) static void FUNC2(unsigned long data)
{
	struct hpsb_iso *iso = (struct hpsb_iso*) data;
	struct ohci_iso_recv *recv = iso->hostdata;

	if (recv->dma_mode == BUFFER_FILL_MODE)
		FUNC0(iso, recv);
	else
		FUNC1(iso, recv);
}