
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rmon_mib {int dummy; } ;
struct net_device {int dummy; } ;
struct gfar_private {int device_flags; int rx_buffer_size; TYPE_1__* regs; } ;
struct TYPE_4__ {int cam2; int cam1; } ;
struct TYPE_3__ {int minflr; int mrblr; TYPE_2__ rmon; int gaddr7; int gaddr6; int gaddr5; int gaddr4; int gaddr3; int gaddr2; int gaddr1; int gaddr0; int igaddr7; int igaddr6; int igaddr5; int igaddr4; int igaddr3; int igaddr2; int igaddr1; int igaddr0; int imask; int ievent; } ;


 int FSL_GIANFAR_DEV_HAS_RMON ;
 int IEVENT_INIT_CLEAR ;
 int IMASK_INIT_CLEAR ;
 int MINFLR_INIT_SETTINGS ;
 int gfar_write (int *,int) ;
 int memset_io (TYPE_2__*,int ,int) ;
 struct gfar_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void init_registers(struct net_device *dev)
{
 struct gfar_private *priv = netdev_priv(dev);


 gfar_write(&priv->regs->ievent, IEVENT_INIT_CLEAR);


 gfar_write(&priv->regs->imask, IMASK_INIT_CLEAR);


 gfar_write(&priv->regs->igaddr0, 0);
 gfar_write(&priv->regs->igaddr1, 0);
 gfar_write(&priv->regs->igaddr2, 0);
 gfar_write(&priv->regs->igaddr3, 0);
 gfar_write(&priv->regs->igaddr4, 0);
 gfar_write(&priv->regs->igaddr5, 0);
 gfar_write(&priv->regs->igaddr6, 0);
 gfar_write(&priv->regs->igaddr7, 0);

 gfar_write(&priv->regs->gaddr0, 0);
 gfar_write(&priv->regs->gaddr1, 0);
 gfar_write(&priv->regs->gaddr2, 0);
 gfar_write(&priv->regs->gaddr3, 0);
 gfar_write(&priv->regs->gaddr4, 0);
 gfar_write(&priv->regs->gaddr5, 0);
 gfar_write(&priv->regs->gaddr6, 0);
 gfar_write(&priv->regs->gaddr7, 0);


 if (priv->device_flags & FSL_GIANFAR_DEV_HAS_RMON) {
  memset_io(&(priv->regs->rmon), 0, sizeof (struct rmon_mib));


  gfar_write(&priv->regs->rmon.cam1, 0xffffffff);
  gfar_write(&priv->regs->rmon.cam2, 0xffffffff);
 }


 gfar_write(&priv->regs->mrblr, priv->rx_buffer_size);


 gfar_write(&priv->regs->minflr, MINFLR_INIT_SETTINGS);
}
