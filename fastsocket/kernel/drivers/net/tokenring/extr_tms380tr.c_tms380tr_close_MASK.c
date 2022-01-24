#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned long data; int /*<<< orphan*/  function; scalar_t__ expires; } ;
struct net_local {int HaltInProgress; int Sleeping; TYPE_1__ timer; scalar_t__ TransmitCommandActive; int /*<<< orphan*/  wait_for_tok_int; } ;
struct net_device {scalar_t__ dma; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  OC_CLOSE ; 
 int /*<<< orphan*/  POSREG ; 
 int /*<<< orphan*/  SIFCMD ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 unsigned long FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 struct net_local* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct net_local*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tms380tr_timer_end_wait ; 

int FUNC14(struct net_device *dev)
{
	struct net_local *tp = FUNC7(dev);
	FUNC8(dev);
	
	FUNC4(&tp->timer);

	/* Flush the Tx and disable Rx here. */

	tp->HaltInProgress 	= 1;
	FUNC13(dev, OC_CLOSE);
	tp->timer.expires	= jiffies + 1*HZ;
	tp->timer.function 	= tms380tr_timer_end_wait;
	tp->timer.data 		= (unsigned long)dev;
	FUNC2(&tp->timer);

	FUNC12(dev);

	tp->Sleeping = 1;
	FUNC6(&tp->wait_for_tok_int);
	tp->TransmitCommandActive = 0;
    
	FUNC4(&tp->timer);
	FUNC11(dev);
   
#ifdef CONFIG_ISA
	if(dev->dma > 0) 
	{
		unsigned long flags=claim_dma_lock();
		disable_dma(dev->dma);
		release_dma_lock(flags);
	}
#endif
	
	FUNC1(0xFF00, SIFCMD);
#if 0
	if(dev->dma > 0) /* what the? */
		SIFWRITEB(0xff, POSREG);
#endif
	FUNC10(tp);

	return (0);
}