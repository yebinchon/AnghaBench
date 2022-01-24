#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct net_device {int /*<<< orphan*/  base_addr; } ;
struct TYPE_5__ {void (* function ) (unsigned long) ;scalar_t__ expires; } ;
struct TYPE_4__ {int timerType; int /*<<< orphan*/  lock; TYPE_3__ timer; scalar_t__ timerSetAt; } ;
typedef  TYPE_1__ TLanPrivateInfo ;

/* Variables and functions */
 int /*<<< orphan*/  TLAN_LED_LINK ; 
 int /*<<< orphan*/  TLAN_LED_REG ; 
#define  TLAN_TIMER_ACTIVITY 135 
 scalar_t__ TLAN_TIMER_ACT_DELAY ; 
#define  TLAN_TIMER_FINISH_RESET 134 
#define  TLAN_TIMER_LINK_BEAT 133 
#define  TLAN_TIMER_PHY_FINISH_AN 132 
#define  TLAN_TIMER_PHY_PDOWN 131 
#define  TLAN_TIMER_PHY_PUP 130 
#define  TLAN_TIMER_PHY_RESET 129 
#define  TLAN_TIMER_PHY_START_LINK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 scalar_t__ jiffies ; 
 TYPE_1__* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC12( unsigned long data )
{
	struct net_device	*dev = (struct net_device *) data;
	TLanPrivateInfo	*priv = FUNC9(dev);
	u32		elapsed;
	unsigned long	flags = 0;

	priv->timer.function = NULL;

	switch ( priv->timerType ) {
#ifdef MONITOR
		case TLAN_TIMER_LINK_BEAT:
			TLan_PhyMonitor( dev );
			break;
#endif
		case TLAN_TIMER_PHY_PDOWN:
			FUNC4( dev );
			break;
		case TLAN_TIMER_PHY_PUP:
			FUNC5( dev );
			break;
		case TLAN_TIMER_PHY_RESET:
			FUNC6( dev );
			break;
		case TLAN_TIMER_PHY_START_LINK:
			FUNC7( dev );
			break;
		case TLAN_TIMER_PHY_FINISH_AN:
			FUNC2( dev );
			break;
		case TLAN_TIMER_FINISH_RESET:
			FUNC1( dev );
			break;
		case TLAN_TIMER_ACTIVITY:
			FUNC10(&priv->lock, flags);
			if ( priv->timer.function == NULL ) {
				elapsed = jiffies - priv->timerSetAt;
				if ( elapsed >= TLAN_TIMER_ACT_DELAY ) {
					FUNC0( dev->base_addr,
							TLAN_LED_REG, TLAN_LED_LINK );
				} else  {
					priv->timer.function = &TLan_Timer;
					priv->timer.expires = priv->timerSetAt
						+ TLAN_TIMER_ACT_DELAY;
					FUNC11(&priv->lock, flags);
					FUNC8( &priv->timer );
					break;
				}
			}
			FUNC11(&priv->lock, flags);
			break;
		default:
			break;
	}

}