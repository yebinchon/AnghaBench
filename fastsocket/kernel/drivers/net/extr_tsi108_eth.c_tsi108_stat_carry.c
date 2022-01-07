
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int collisions; int tx_aborted_errors; int tx_packets; int tx_bytes; int rx_missed_errors; int rx_length_errors; int rx_frame_errors; int multicast; int rx_packets; int rx_bytes; } ;
struct tsi108_prv_data {int misclock; int tx_pause_drop; TYPE_1__ stats; int tx_coll_abort; int rx_long_fcs; int rx_short_fcs; int rx_overruns; int rx_underruns; int rx_fcs; } ;
struct net_device {int dummy; } ;


 int TSI108_STAT_CARRY1 ;
 int TSI108_STAT_CARRY1_RXALIGN ;
 int TSI108_STAT_CARRY1_RXBYTES ;
 int TSI108_STAT_CARRY1_RXDROP ;
 int TSI108_STAT_CARRY1_RXFCS ;
 int TSI108_STAT_CARRY1_RXFRAG ;
 int TSI108_STAT_CARRY1_RXJABBER ;
 int TSI108_STAT_CARRY1_RXJUMBO ;
 int TSI108_STAT_CARRY1_RXLENGTH ;
 int TSI108_STAT_CARRY1_RXMCAST ;
 int TSI108_STAT_CARRY1_RXPKTS ;
 int TSI108_STAT_CARRY1_RXRUNT ;
 int TSI108_STAT_CARRY2 ;
 int TSI108_STAT_CARRY2_TXBYTES ;
 int TSI108_STAT_CARRY2_TXEXCOL ;
 int TSI108_STAT_CARRY2_TXEXDEF ;
 int TSI108_STAT_CARRY2_TXPAUSE ;
 int TSI108_STAT_CARRY2_TXPKTS ;
 int TSI108_STAT_CARRY2_TXTCOL ;
 int TSI108_STAT_RXALIGN_CARRY ;
 int TSI108_STAT_RXBYTES_CARRY ;
 int TSI108_STAT_RXDROP_CARRY ;
 int TSI108_STAT_RXFCS_CARRY ;
 int TSI108_STAT_RXFRAG_CARRY ;
 int TSI108_STAT_RXJABBER_CARRY ;
 int TSI108_STAT_RXJUMBO_CARRY ;
 int TSI108_STAT_RXLENGTH_CARRY ;
 int TSI108_STAT_RXMCAST_CARRY ;
 int TSI108_STAT_RXPKTS_CARRY ;
 int TSI108_STAT_RXRUNT_CARRY ;
 int TSI108_STAT_TXBYTES_CARRY ;
 int TSI108_STAT_TXEXCOL_CARRY ;
 int TSI108_STAT_TXEXDEF_CARRY ;
 int TSI108_STAT_TXPAUSEDROP_CARRY ;
 int TSI108_STAT_TXPKTS_CARRY ;
 int TSI108_STAT_TXTCOL_CARRY ;
 int TSI_READ (int ) ;
 int TSI_WRITE (int ,int ) ;
 struct tsi108_prv_data* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tsi108_stat_carry_one (int ,int ,int ,int *) ;

__attribute__((used)) static void tsi108_stat_carry(struct net_device *dev)
{
 struct tsi108_prv_data *data = netdev_priv(dev);
 u32 carry1, carry2;

 spin_lock_irq(&data->misclock);

 carry1 = TSI_READ(TSI108_STAT_CARRY1);
 carry2 = TSI_READ(TSI108_STAT_CARRY2);

 TSI_WRITE(TSI108_STAT_CARRY1, carry1);
 TSI_WRITE(TSI108_STAT_CARRY2, carry2);

 tsi108_stat_carry_one(carry1, TSI108_STAT_CARRY1_RXBYTES,
         TSI108_STAT_RXBYTES_CARRY, &data->stats.rx_bytes);

 tsi108_stat_carry_one(carry1, TSI108_STAT_CARRY1_RXPKTS,
         TSI108_STAT_RXPKTS_CARRY,
         &data->stats.rx_packets);

 tsi108_stat_carry_one(carry1, TSI108_STAT_CARRY1_RXFCS,
         TSI108_STAT_RXFCS_CARRY, &data->rx_fcs);

 tsi108_stat_carry_one(carry1, TSI108_STAT_CARRY1_RXMCAST,
         TSI108_STAT_RXMCAST_CARRY,
         &data->stats.multicast);

 tsi108_stat_carry_one(carry1, TSI108_STAT_CARRY1_RXALIGN,
         TSI108_STAT_RXALIGN_CARRY,
         &data->stats.rx_frame_errors);

 tsi108_stat_carry_one(carry1, TSI108_STAT_CARRY1_RXLENGTH,
         TSI108_STAT_RXLENGTH_CARRY,
         &data->stats.rx_length_errors);

 tsi108_stat_carry_one(carry1, TSI108_STAT_CARRY1_RXRUNT,
         TSI108_STAT_RXRUNT_CARRY, &data->rx_underruns);

 tsi108_stat_carry_one(carry1, TSI108_STAT_CARRY1_RXJUMBO,
         TSI108_STAT_RXJUMBO_CARRY, &data->rx_overruns);

 tsi108_stat_carry_one(carry1, TSI108_STAT_CARRY1_RXFRAG,
         TSI108_STAT_RXFRAG_CARRY, &data->rx_short_fcs);

 tsi108_stat_carry_one(carry1, TSI108_STAT_CARRY1_RXJABBER,
         TSI108_STAT_RXJABBER_CARRY, &data->rx_long_fcs);

 tsi108_stat_carry_one(carry1, TSI108_STAT_CARRY1_RXDROP,
         TSI108_STAT_RXDROP_CARRY,
         &data->stats.rx_missed_errors);

 tsi108_stat_carry_one(carry2, TSI108_STAT_CARRY2_TXBYTES,
         TSI108_STAT_TXBYTES_CARRY, &data->stats.tx_bytes);

 tsi108_stat_carry_one(carry2, TSI108_STAT_CARRY2_TXPKTS,
         TSI108_STAT_TXPKTS_CARRY,
         &data->stats.tx_packets);

 tsi108_stat_carry_one(carry2, TSI108_STAT_CARRY2_TXEXDEF,
         TSI108_STAT_TXEXDEF_CARRY,
         &data->stats.tx_aborted_errors);

 tsi108_stat_carry_one(carry2, TSI108_STAT_CARRY2_TXEXCOL,
         TSI108_STAT_TXEXCOL_CARRY, &data->tx_coll_abort);

 tsi108_stat_carry_one(carry2, TSI108_STAT_CARRY2_TXTCOL,
         TSI108_STAT_TXTCOL_CARRY,
         &data->stats.collisions);

 tsi108_stat_carry_one(carry2, TSI108_STAT_CARRY2_TXPAUSE,
         TSI108_STAT_TXPAUSEDROP_CARRY,
         &data->tx_pause_drop);

 spin_unlock_irq(&data->misclock);
}
