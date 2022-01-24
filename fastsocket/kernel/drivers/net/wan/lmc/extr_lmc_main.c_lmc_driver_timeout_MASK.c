#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct net_device {scalar_t__ trans_start; int /*<<< orphan*/  name; } ;
struct TYPE_11__ {int tx_ProcTimeout; int /*<<< orphan*/  tx_tbusy_calls; } ;
struct TYPE_12__ {int /*<<< orphan*/  lmc_lock; TYPE_3__ extra_stats; TYPE_2__* lmc_device; } ;
typedef  TYPE_4__ lmc_softc_t ;
struct TYPE_9__ {int /*<<< orphan*/  tx_errors; } ;
struct TYPE_10__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  LMC_EVENT_RESET1 ; 
 int /*<<< orphan*/  LMC_EVENT_RESET2 ; 
 int /*<<< orphan*/  LMC_EVENT_XMTPRCTMO ; 
 scalar_t__ TX_TIMEOUT ; 
 int /*<<< orphan*/  csr_command ; 
 int /*<<< orphan*/  csr_status ; 
 int /*<<< orphan*/  csr_txpoll ; 
 TYPE_4__* FUNC3 (struct net_device*) ; 
 scalar_t__ jiffies ; 
 int FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC10(struct net_device *dev)
{
    lmc_softc_t *sc = FUNC3(dev);
    u32 csr6;
    unsigned long flags;

    FUNC6(dev, "lmc_driver_timeout in");

    FUNC8(&sc->lmc_lock, flags);

    FUNC7("%s: Xmitter busy|\n", dev->name);

    sc->extra_stats.tx_tbusy_calls++;
    if (jiffies - dev->trans_start < TX_TIMEOUT)
	    goto bug_out;

    /*
     * Chip seems to have locked up
     * Reset it
     * This whips out all our decriptor
     * table and starts from scartch
     */

    FUNC2(LMC_EVENT_XMTPRCTMO,
                  FUNC0 (sc, csr_status),
		  sc->extra_stats.tx_ProcTimeout);

    FUNC5 (dev);

    FUNC2(LMC_EVENT_RESET1, FUNC0 (sc, csr_status), 0);
    FUNC2(LMC_EVENT_RESET2,
                  FUNC4 (sc, 0, 16),
                  FUNC4 (sc, 0, 17));

    /* restart the tx processes */
    csr6 = FUNC0 (sc, csr_command);
    FUNC1 (sc, csr_command, csr6 | 0x0002);
    FUNC1 (sc, csr_command, csr6 | 0x2002);

    /* immediate transmit */
    FUNC1 (sc, csr_txpoll, 0);

    sc->lmc_device->stats.tx_errors++;
    sc->extra_stats.tx_ProcTimeout++; /* -baz */

    dev->trans_start = jiffies;

bug_out:

    FUNC9(&sc->lmc_lock, flags);

    FUNC6(dev, "lmc_driver_timout out");


}