
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdio_ops {int write; int read; int mode_support; } ;
struct cphy_ops {int mmds; } ;
struct TYPE_2__ {int prtad; int mdio_write; int mdio_read; int mode_support; int mmds; } ;
struct cphy {unsigned int caps; char const* desc; TYPE_1__ mdio; struct cphy_ops* ops; struct adapter* adapter; } ;
struct adapter {int dummy; } ;



__attribute__((used)) static inline void cphy_init(struct cphy *phy, struct adapter *adapter,
        int phy_addr, struct cphy_ops *phy_ops,
        const struct mdio_ops *mdio_ops,
         unsigned int caps, const char *desc)
{
 phy->caps = caps;
 phy->adapter = adapter;
 phy->desc = desc;
 phy->ops = phy_ops;
 if (mdio_ops) {
  phy->mdio.prtad = phy_addr;
  phy->mdio.mmds = phy_ops->mmds;
  phy->mdio.mode_support = mdio_ops->mode_support;
  phy->mdio.mdio_read = mdio_ops->read;
  phy->mdio.mdio_write = mdio_ops->write;
 }
}
