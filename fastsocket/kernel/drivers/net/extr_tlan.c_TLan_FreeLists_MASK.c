#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  len; } ;
struct net_device {int dummy; } ;
struct TYPE_8__ {TYPE_1__* buffer; } ;
struct TYPE_7__ {int /*<<< orphan*/  pciDev; TYPE_3__* rxList; TYPE_3__* txList; } ;
struct TYPE_6__ {scalar_t__ address; } ;
typedef  TYPE_2__ TLanPrivateInfo ;
typedef  TYPE_3__ TLanList ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  TLAN_MAX_FRAME_SIZE ; 
 scalar_t__ TLAN_MIN_FRAME_SIZE ; 
 int TLAN_NUM_RX_LISTS ; 
 int TLAN_NUM_TX_LISTS ; 
 struct sk_buff* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_2__* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5( struct net_device *dev )
{
	TLanPrivateInfo *priv = FUNC3(dev);
	int		i;
	TLanList	*list;
	struct sk_buff	*skb;

	for ( i = 0; i < TLAN_NUM_TX_LISTS; i++ ) {
		list = priv->txList + i;
		skb = FUNC0(list);
		if ( skb ) {
			FUNC4(
				priv->pciDev,
				list->buffer[0].address,
				FUNC2(skb->len,
				    (unsigned int)TLAN_MIN_FRAME_SIZE),
				PCI_DMA_TODEVICE);
			FUNC1( skb );
			list->buffer[8].address = 0;
			list->buffer[9].address = 0;
		}
	}

	for ( i = 0; i < TLAN_NUM_RX_LISTS; i++ ) {
		list = priv->rxList + i;
		skb = FUNC0(list);
		if ( skb ) {
			FUNC4(priv->pciDev,
					 list->buffer[0].address,
					 TLAN_MAX_FRAME_SIZE,
					 PCI_DMA_FROMDEVICE);
			FUNC1( skb );
			list->buffer[8].address = 0;
			list->buffer[9].address = 0;
		}
	}
}