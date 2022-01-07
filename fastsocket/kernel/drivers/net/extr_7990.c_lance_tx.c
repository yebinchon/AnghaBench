
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_packets; scalar_t__ collisions; int tx_fifo_errors; int tx_carrier_errors; int tx_window_errors; int tx_aborted_errors; int tx_errors; } ;
struct net_device {TYPE_1__ stats; int name; } ;
struct lance_tx_desc {int tmd1_bits; int misc; } ;
struct lance_private {int tx_old; int tx_new; int tx_ring_mod_mask; scalar_t__ tpe; scalar_t__ auto_select; struct lance_init_block* init_block; } ;
struct lance_init_block {struct lance_tx_desc* btx_ring; } ;


 int LE_C0_INEA ;
 int LE_C0_STOP ;
 int LE_C0_TINT ;
 int LE_CSR0 ;
 int LE_T1_EMORE ;
 int LE_T1_EONE ;
 int LE_T1_ERR ;
 int LE_T1_OWN ;
 int LE_T1_POK ;
 int LE_T3_BUF ;
 int LE_T3_CLOS ;
 int LE_T3_LCOL ;
 int LE_T3_RTY ;
 int LE_T3_UFL ;
 int WRITERAP (struct lance_private*,int ) ;
 int WRITERDP (struct lance_private*,int) ;
 int blinken_leds (int,int ) ;
 int init_restart_lance (struct lance_private*) ;
 int lance_init_ring (struct net_device*) ;
 int load_csrs (struct lance_private*) ;
 struct lance_private* netdev_priv (struct net_device*) ;
 int printk (char*,int ,...) ;

__attribute__((used)) static int lance_tx (struct net_device *dev)
{
        struct lance_private *lp = netdev_priv(dev);
        volatile struct lance_init_block *ib = lp->init_block;
        volatile struct lance_tx_desc *td;
        int i, j;
        int status;





        WRITERDP(lp, LE_C0_TINT | LE_C0_INEA);


        j = lp->tx_old;
        for (i = j; i != lp->tx_new; i = j) {
                td = &ib->btx_ring [i];


                if (td->tmd1_bits & LE_T1_OWN)
                        break;

                if (td->tmd1_bits & LE_T1_ERR) {
                        status = td->misc;

                        dev->stats.tx_errors++;
                        if (status & LE_T3_RTY) dev->stats.tx_aborted_errors++;
                        if (status & LE_T3_LCOL) dev->stats.tx_window_errors++;

                        if (status & LE_T3_CLOS) {
                                dev->stats.tx_carrier_errors++;
                                if (lp->auto_select) {
                                        lp->tpe = 1 - lp->tpe;
                                        printk("%s: Carrier Lost, trying %s\n",
                                               dev->name, lp->tpe?"TPE":"AUI");

                                        WRITERAP(lp, LE_CSR0);
                                        WRITERDP(lp, LE_C0_STOP);
                                        lance_init_ring (dev);
                                        load_csrs (lp);
                                        init_restart_lance (lp);
                                        return 0;
                                }
                        }



                        if (status & (LE_T3_BUF|LE_T3_UFL)) {
                                dev->stats.tx_fifo_errors++;

                                printk ("%s: Tx: ERR_BUF|ERR_UFL, restarting\n",
                                        dev->name);

                                WRITERAP(lp, LE_CSR0);
                                WRITERDP(lp, LE_C0_STOP);
                                lance_init_ring (dev);
                                load_csrs (lp);
                                init_restart_lance (lp);
                                return 0;
                        }
                } else if ((td->tmd1_bits & LE_T1_POK) == LE_T1_POK) {



                        td->tmd1_bits &= ~(LE_T1_POK);


                        if (td->tmd1_bits & LE_T1_EONE)
                                dev->stats.collisions++;


                        if (td->tmd1_bits & LE_T1_EMORE)
                                dev->stats.collisions += 2;

                        dev->stats.tx_packets++;
                }

                j = (j + 1) & lp->tx_ring_mod_mask;
        }
        lp->tx_old = j;
        WRITERDP(lp, LE_C0_TINT | LE_C0_INEA);
        return 0;
}
