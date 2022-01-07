
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int * dev_addr; } ;
struct lance_private {int lance_log_tx_bufs; int lance_log_rx_bufs; scalar_t__ tx_full; scalar_t__ tx_old; scalar_t__ rx_old; scalar_t__ tx_new; scalar_t__ rx_new; struct lance_init_block* lance_init_block; struct lance_init_block* init_block; } ;
struct lance_init_block {int rx_len; int rx_ptr; int tx_len; int tx_ptr; scalar_t__* filter; TYPE_1__* btx_ring; TYPE_1__* brx_ring; TYPE_1__*** rx_buf; TYPE_1__*** tx_buf; int * phys_addr; int mode; } ;
struct TYPE_2__ {int tmd0; int tmd1_hadr; int length; int rmd0; int rmd1_hadr; scalar_t__ mblength; int rmd1_bits; scalar_t__ misc; scalar_t__ tmd1_bits; } ;


 scalar_t__ DEBUG_IRING ;
 int LANCE_ADDR (TYPE_1__**) ;
 int LE_MO_PROM ;
 int LE_R1_OWN ;
 int PRINT_RINGS () ;
 int RX_BUFF_SIZE ;
 struct lance_private* netdev_priv (struct net_device*) ;
 int printk (char*,...) ;

__attribute__((used)) static void lance_init_ring (struct net_device *dev)
{
        struct lance_private *lp = netdev_priv(dev);
        volatile struct lance_init_block *ib = lp->init_block;
        volatile struct lance_init_block *aib;
        int leptr;
        int i;

        aib = lp->lance_init_block;

        lp->rx_new = lp->tx_new = 0;
        lp->rx_old = lp->tx_old = 0;

        ib->mode = LE_MO_PROM;
        for (i=0; i<6; i++)
           ib->phys_addr[i] = dev->dev_addr[i];


        if (DEBUG_IRING)
                printk ("TX rings:\n");

 lp->tx_full = 0;

        for (i = 0; i < (1<<lp->lance_log_tx_bufs); i++) {
                leptr = LANCE_ADDR(&aib->tx_buf[i][0]);
                ib->btx_ring [i].tmd0 = leptr;
                ib->btx_ring [i].tmd1_hadr = leptr >> 16;
                ib->btx_ring [i].tmd1_bits = 0;
                ib->btx_ring [i].length = 0xf000;
                ib->btx_ring [i].misc = 0;
                if (DEBUG_IRING)
                   printk ("%d: 0x%8.8x\n", i, leptr);
        }


        if (DEBUG_IRING)
                printk ("RX rings:\n");
        for (i = 0; i < (1<<lp->lance_log_rx_bufs); i++) {
                leptr = LANCE_ADDR(&aib->rx_buf[i][0]);

                ib->brx_ring [i].rmd0 = leptr;
                ib->brx_ring [i].rmd1_hadr = leptr >> 16;
                ib->brx_ring [i].rmd1_bits = LE_R1_OWN;

                ib->brx_ring [i].length = -RX_BUFF_SIZE | 0xf000;
                ib->brx_ring [i].mblength = 0;
                if (DEBUG_IRING)
                        printk ("%d: 0x%8.8x\n", i, leptr);
        }




        leptr = LANCE_ADDR(&aib->brx_ring);
        ib->rx_len = (lp->lance_log_rx_bufs << 13) | (leptr >> 16);
        ib->rx_ptr = leptr;
        if (DEBUG_IRING)
                printk ("RX ptr: %8.8x\n", leptr);


        leptr = LANCE_ADDR(&aib->btx_ring);
        ib->tx_len = (lp->lance_log_tx_bufs << 13) | (leptr >> 16);
        ib->tx_ptr = leptr;
        if (DEBUG_IRING)
                printk ("TX ptr: %8.8x\n", leptr);


        ib->filter [0] = 0;
        ib->filter [1] = 0;
        PRINT_RINGS();
}
