
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct emac_priv {TYPE_1__* ndev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int EMAC_RXCP (scalar_t__) ;
 int EMAC_TEARDOWN_VALUE ;
 int cpu_relax () ;
 int dev_err (struct device*,char*) ;
 int emac_read (int ) ;
 int emac_write (int ,int) ;

__attribute__((used)) static void emac_rxch_teardown(struct emac_priv *priv, u32 ch)
{
 struct device *emac_dev = &priv->ndev->dev;
 u32 teardown_cnt = 0xFFFFFFF0;

 while ((emac_read(EMAC_RXCP(ch)) & EMAC_TEARDOWN_VALUE) !=
        EMAC_TEARDOWN_VALUE) {

  cpu_relax();
  --teardown_cnt;
  if (0 == teardown_cnt) {
   dev_err(emac_dev, "EMAC: RX teardown aborted\n");
   break;
  }
 }
 emac_write(EMAC_RXCP(ch), EMAC_TEARDOWN_VALUE);
}
