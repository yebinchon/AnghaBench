
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned int base_addr; int* dev_addr; int name; } ;
struct local_info_t {scalar_t__ cardtype; } ;


 int AUTO_MODE ;
 int BANK_0 ;
 int BANK_0U ;
 int BANK_2 ;
 int BANK_2U ;
 scalar_t__ BMPR12 ;
 scalar_t__ BMPR13 ;
 scalar_t__ COL_CTRL ;
 int CONFIG0_DFL ;
 int CONFIG0_DFL_1 ;
 int CONFIG0_RST ;
 int CONFIG0_RST_1 ;
 scalar_t__ CONFIG_0 ;
 scalar_t__ CONFIG_1 ;
 scalar_t__ CONTEC ;
 scalar_t__ DATAPORT ;
 int DEBUG (int,char*,int ) ;
 int D_RX_INTR ;
 int D_TX_INTR ;
 int D_TX_MODE ;
 int ID_MATCHED ;
 int INTR_OFF ;
 int INTR_ON ;
 scalar_t__ LAN_CTRL ;
 scalar_t__ MBH10302 ;
 scalar_t__ NODE_ID ;
 scalar_t__ RX_INTR ;
 scalar_t__ RX_MODE ;
 scalar_t__ RX_SKIP ;
 scalar_t__ RX_STATUS ;
 scalar_t__ TDK ;
 int TDK_AUTO_MODE ;
 scalar_t__ TX_INTR ;
 scalar_t__ TX_MODE ;
 scalar_t__ TX_STATUS ;
 int inw (scalar_t__) ;
 struct local_info_t* netdev_priv (struct net_device*) ;
 int outb (int,scalar_t__) ;
 int set_rx_mode (struct net_device*) ;
 scalar_t__ sram_config ;

__attribute__((used)) static void fjn_reset(struct net_device *dev)
{
    struct local_info_t *lp = netdev_priv(dev);
    unsigned int ioaddr = dev->base_addr;
    int i;

    DEBUG(4, "fjn_reset(%s) called.\n",dev->name);


    if( sram_config == 0 )
 outb(CONFIG0_RST, ioaddr + CONFIG_0);
    else
 outb(CONFIG0_RST_1, ioaddr + CONFIG_0);


    if (lp->cardtype == MBH10302)
 outb(BANK_0, ioaddr + CONFIG_1);
    else
 outb(BANK_0U, ioaddr + CONFIG_1);


    outb(D_TX_MODE, ioaddr + TX_MODE);

    outb(ID_MATCHED, ioaddr + RX_MODE);


    for (i = 0; i < 6; i++)
        outb(dev->dev_addr[i], ioaddr + NODE_ID + i);


    set_rx_mode(dev);


    if (lp->cardtype == MBH10302)
 outb(BANK_2, ioaddr + CONFIG_1);
    else
 outb(BANK_2U, ioaddr + CONFIG_1);


    if( lp->cardtype == TDK || lp->cardtype == CONTEC)
        outb(TDK_AUTO_MODE, ioaddr + COL_CTRL);
    else
        outb(AUTO_MODE, ioaddr + COL_CTRL);


    outb(0x00, ioaddr + BMPR12);
    outb(0x00, ioaddr + BMPR13);


    outb(0x01, ioaddr + RX_SKIP);


    if( sram_config == 0 )
 outb(CONFIG0_DFL, ioaddr + CONFIG_0);
    else
 outb(CONFIG0_DFL_1, ioaddr + CONFIG_0);


    inw(ioaddr + DATAPORT);
    inw(ioaddr + DATAPORT);


    outb(0xff, ioaddr + TX_STATUS);
    outb(0xff, ioaddr + RX_STATUS);

    if (lp->cardtype == MBH10302)
 outb(INTR_OFF, ioaddr + LAN_CTRL);


    outb(D_TX_INTR, ioaddr + TX_INTR);
    outb(D_RX_INTR, ioaddr + RX_INTR);


    if (lp->cardtype == MBH10302)
 outb(INTR_ON, ioaddr + LAN_CTRL);
}
