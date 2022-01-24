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
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  base_addr; struct airo_info* ml_priv; } ;
struct airo_info {int /*<<< orphan*/  tfm; int /*<<< orphan*/  shared_dma; int /*<<< orphan*/  shared; scalar_t__ pci; scalar_t__ pciaux; scalar_t__ pcimem; int /*<<< orphan*/  flags; int /*<<< orphan*/  SSID; int /*<<< orphan*/  APList; int /*<<< orphan*/  rssi; int /*<<< orphan*/  flash; int /*<<< orphan*/  txq; struct net_device* wifidev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_MPI ; 
 int /*<<< orphan*/  FLAG_RADIO_DOWN ; 
 int /*<<< orphan*/  FLAG_REGISTERED ; 
 int /*<<< orphan*/  PCI_SHARED_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct airo_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct airo_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct airo_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct airo_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*,struct airo_info*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct net_device*) ; 

void FUNC19( struct net_device *dev, int freeres )
{
	struct airo_info *ai = dev->ml_priv;

	FUNC13(FLAG_RADIO_DOWN, &ai->flags);
	FUNC5(ai, 1);
	FUNC6(ai);
	FUNC16( dev, ai );
	if (FUNC17(FLAG_REGISTERED, &ai->flags)) {
		FUNC18( dev );
		if (ai->wifidev) {
			FUNC18(ai->wifidev);
			FUNC7(ai->wifidev);
			ai->wifidev = NULL;
		}
		FUNC1(FLAG_REGISTERED, &ai->flags);
	}
	/*
	 * Clean out tx queue
	 */
	if (FUNC17(FLAG_MPI, &ai->flags) && !FUNC15(&ai->txq)) {
		struct sk_buff *skb = NULL;
		for (;(skb = FUNC14(&ai->txq));)
			FUNC4(skb);
	}

	FUNC0 (ai);

	FUNC9(ai->flash);
	FUNC9(ai->rssi);
	FUNC9(ai->APList);
	FUNC9(ai->SSID);
	if (freeres) {
		/* PCMCIA frees this stuff, so only for PCI and ISA */
	        FUNC12( dev->base_addr, 64 );
		if (FUNC17(FLAG_MPI, &ai->flags)) {
			if (ai->pci)
				FUNC10(ai->pci);
			if (ai->pcimem)
				FUNC8(ai->pcimem);
			if (ai->pciaux)
				FUNC8(ai->pciaux);
			FUNC11(ai->pci, PCI_SHARED_LEN,
				ai->shared, ai->shared_dma);
		}
        }
	FUNC2(ai->tfm);
	FUNC3(ai);
	FUNC7( dev );
}