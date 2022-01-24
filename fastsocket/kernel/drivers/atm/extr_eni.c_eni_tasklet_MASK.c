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
struct eni_dev {int /*<<< orphan*/  tx_wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  events; } ;
struct atm_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct atm_dev*) ; 
 struct eni_dev* FUNC1 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MID_DMA_ERR_ACK ; 
 int MID_RX_DMA_COMPLETE ; 
 int MID_SERVICE ; 
 int MID_TX_COMPLETE ; 
 int MID_TX_DMA_COMPLETE ; 
 int MID_TX_DMA_OVFL ; 
 int MID_TX_IDENT_MISM ; 
 int /*<<< orphan*/  FUNC3 (struct atm_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  tx_complete ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(unsigned long data)
{
	struct atm_dev *dev = (struct atm_dev *) data;
	struct eni_dev *eni_dev = FUNC1(dev);
	unsigned long flags;
	u32 events;

	FUNC0("eni_tasklet (dev %p)\n",dev);
	FUNC9(&eni_dev->lock,flags);
	events = FUNC12(&eni_dev->events,0);
	FUNC10(&eni_dev->lock,flags);
	if (events & MID_RX_DMA_COMPLETE) {
		FUNC2("INT: RX DMA complete, starting dequeue_rx\n",0,0);
		FUNC4(dev);
		FUNC2("dequeue_rx done, starting poll_rx\n",0,0);
		FUNC7(dev);
		FUNC2("poll_rx done\n",0,0);
		/* poll_tx ? */
	}
	if (events & MID_SERVICE) {
		FUNC2("INT: service, starting get_service\n",0,0);
		FUNC6(dev);
		FUNC2("get_service done, starting poll_rx\n",0,0);
		FUNC7(dev);
		FUNC2("poll_rx done\n",0,0);
	}
 	if (events & MID_TX_DMA_COMPLETE) {
		FUNC2("INT: TX DMA COMPLETE\n",0,0);
		FUNC5(dev);
	}
	if (events & MID_TX_COMPLETE) {
		FUNC2("INT: TX COMPLETE\n",0,0);
tx_complete++;
		FUNC11(&eni_dev->tx_wait);
		/* poll_rx ? */
	}
	if (events & (MID_DMA_ERR_ACK | MID_TX_IDENT_MISM | MID_TX_DMA_OVFL)) {
		FUNC2("bug interrupt\n",0,0);
		FUNC3(dev,events);
	}
	FUNC8(dev);
}