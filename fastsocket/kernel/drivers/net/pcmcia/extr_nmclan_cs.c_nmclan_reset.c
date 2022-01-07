
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_long ;
struct pcmcia_device {int dummy; } ;
struct net_device {int base_addr; int dev_addr; } ;
struct TYPE_7__ {void* tx_free_frames; struct pcmcia_device link; } ;
typedef TYPE_1__ mace_private ;
struct TYPE_8__ {int Value; void* Offset; int Action; scalar_t__ Function; } ;
typedef TYPE_2__ conf_reg_t ;


 void* AM2150_MAX_TX_FRAMES ;
 void* CISREG_COR ;
 int COR_CONFIG_MASK ;
 int COR_LEVEL_REQ ;
 int COR_SOFT_RESET ;
 int CS_READ ;
 int CS_WRITE ;
 int DEBUG (int,char*,int) ;
 int MACE_IMR ;
 int MACE_IMR_DEFAULT ;
 int mace_init (TYPE_1__*,int ,int ) ;
 int mace_write (TYPE_1__*,int ,int ,int ) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int pcmcia_access_configuration_register (struct pcmcia_device*,TYPE_2__*) ;
 int restore_multicast_list (struct net_device*) ;

__attribute__((used)) static void nmclan_reset(struct net_device *dev)
{
  mace_private *lp = netdev_priv(dev);
  lp->tx_free_frames=AM2150_MAX_TX_FRAMES;


  mace_init(lp, dev->base_addr, dev->dev_addr);
  mace_write(lp, dev->base_addr, MACE_IMR, MACE_IMR_DEFAULT);


  restore_multicast_list(dev);
}
