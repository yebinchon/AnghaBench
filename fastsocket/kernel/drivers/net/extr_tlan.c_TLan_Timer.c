
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct net_device {int base_addr; } ;
struct TYPE_5__ {void (* function ) (unsigned long) ;scalar_t__ expires; } ;
struct TYPE_4__ {int timerType; int lock; TYPE_3__ timer; scalar_t__ timerSetAt; } ;
typedef TYPE_1__ TLanPrivateInfo ;


 int TLAN_LED_LINK ;
 int TLAN_LED_REG ;

 scalar_t__ TLAN_TIMER_ACT_DELAY ;







 int TLan_DioWrite8 (int ,int ,int ) ;
 int TLan_FinishReset (struct net_device*) ;
 int TLan_PhyFinishAutoNeg (struct net_device*) ;
 int TLan_PhyMonitor (struct net_device*) ;
 int TLan_PhyPowerDown (struct net_device*) ;
 int TLan_PhyPowerUp (struct net_device*) ;
 int TLan_PhyReset (struct net_device*) ;
 int TLan_PhyStartLink (struct net_device*) ;
 int add_timer (TYPE_3__*) ;
 scalar_t__ jiffies ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void TLan_Timer( unsigned long data )
{
 struct net_device *dev = (struct net_device *) data;
 TLanPrivateInfo *priv = netdev_priv(dev);
 u32 elapsed;
 unsigned long flags = 0;

 priv->timer.function = ((void*)0);

 switch ( priv->timerType ) {





  case 131:
   TLan_PhyPowerDown( dev );
   break;
  case 130:
   TLan_PhyPowerUp( dev );
   break;
  case 129:
   TLan_PhyReset( dev );
   break;
  case 128:
   TLan_PhyStartLink( dev );
   break;
  case 132:
   TLan_PhyFinishAutoNeg( dev );
   break;
  case 134:
   TLan_FinishReset( dev );
   break;
  case 135:
   spin_lock_irqsave(&priv->lock, flags);
   if ( priv->timer.function == ((void*)0) ) {
    elapsed = jiffies - priv->timerSetAt;
    if ( elapsed >= TLAN_TIMER_ACT_DELAY ) {
     TLan_DioWrite8( dev->base_addr,
       TLAN_LED_REG, TLAN_LED_LINK );
    } else {
     priv->timer.function = &TLan_Timer;
     priv->timer.expires = priv->timerSetAt
      + TLAN_TIMER_ACT_DELAY;
     spin_unlock_irqrestore(&priv->lock, flags);
     add_timer( &priv->timer );
     break;
    }
   }
   spin_unlock_irqrestore(&priv->lock, flags);
   break;
  default:
   break;
 }

}
