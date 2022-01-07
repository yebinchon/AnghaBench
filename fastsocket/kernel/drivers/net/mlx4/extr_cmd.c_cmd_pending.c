
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mlx4_dev {int pdev; } ;
struct TYPE_3__ {int toggle; scalar_t__ hcr; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;


 int EIO ;
 int HCR_GO_BIT ;
 scalar_t__ HCR_STATUS_OFFSET ;
 int HCR_T_BIT ;
 TYPE_2__* mlx4_priv (struct mlx4_dev*) ;
 scalar_t__ pci_channel_offline (int ) ;
 int readl (scalar_t__) ;
 int swab32 (int) ;

__attribute__((used)) static int cmd_pending(struct mlx4_dev *dev)
{
 u32 status;

 if (pci_channel_offline(dev->pdev))
  return -EIO;

 status = readl(mlx4_priv(dev)->cmd.hcr + HCR_STATUS_OFFSET);

 return (status & swab32(1 << HCR_GO_BIT)) ||
  (mlx4_priv(dev)->cmd.toggle ==
   !!(status & swab32(1 << HCR_T_BIT)));
}
