
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dscc4_dev_priv {TYPE_1__* pci_priv; } ;
struct TYPE_2__ {int xtal_hz; } ;


 int DSCC4_HZ_MAX ;
 int EOPNOTSUPP ;

__attribute__((used)) static inline int dscc4_set_quartz(struct dscc4_dev_priv *dpriv, int hz)
{
 int ret = 0;

 if ((hz < 0) || (hz > DSCC4_HZ_MAX))
  ret = -EOPNOTSUPP;
 else
  dpriv->pci_priv->xtal_hz = hz;

 return ret;
}
