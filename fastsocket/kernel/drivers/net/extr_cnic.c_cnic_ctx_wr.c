
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct drv_ctl_io {void* data; void* offset; void* cid_addr; } ;
struct TYPE_2__ {struct drv_ctl_io io; } ;
struct drv_ctl_info {int cmd; TYPE_1__ data; } ;
struct cnic_local {struct cnic_eth_dev* ethdev; } ;
struct cnic_eth_dev {int (* drv_ctl ) (int ,struct drv_ctl_info*) ;} ;
struct cnic_dev {int netdev; struct cnic_local* cnic_priv; } ;


 int DRV_CTL_CTX_WR_CMD ;
 int stub1 (int ,struct drv_ctl_info*) ;

__attribute__((used)) static void cnic_ctx_wr(struct cnic_dev *dev, u32 cid_addr, u32 off, u32 val)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct cnic_eth_dev *ethdev = cp->ethdev;
 struct drv_ctl_info info;
 struct drv_ctl_io *io = &info.data.io;

 info.cmd = DRV_CTL_CTX_WR_CMD;
 io->cid_addr = cid_addr;
 io->offset = off;
 io->data = val;
 ethdev->drv_ctl(dev->netdev, &info);
}
