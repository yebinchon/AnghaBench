
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ipw2100_status {int dummy; } ;
struct TYPE_5__ {struct ipw2100_status* drv; } ;
struct ipw2100_priv {TYPE_3__* net_dev; int fatal_error; TYPE_1__ status_queue; } ;
struct TYPE_6__ {int rx_errors; } ;
struct TYPE_7__ {int name; TYPE_2__ stats; } ;


 int IPW2100_ERR_C3_CORRUPTION ;
 int IPW_AUX_HOST_RESET_REG_MASTER_DISABLED ;
 int IPW_AUX_HOST_RESET_REG_STOP_MASTER ;
 int IPW_DEBUG_INFO (char*,int,...) ;
 int IPW_REG_RESET_REG ;
 int IPW_WAIT_RESET_MASTER_ASSERT_COMPLETE_DELAY ;
 int RX_QUEUE_LENGTH ;
 int SEARCH_SNAPSHOT ;
 int SEARCH_SUCCESS ;
 int ipw2100_match_buf (struct ipw2100_priv*,int *,int,int ) ;
 int printk_buf (int *,int) ;
 int read_register (TYPE_3__*,int ,int*) ;
 int schedule_reset (struct ipw2100_priv*) ;
 int udelay (int ) ;
 int write_register (TYPE_3__*,int ,int ) ;

__attribute__((used)) static void ipw2100_corruption_detected(struct ipw2100_priv *priv, int i)
{






 IPW_DEBUG_INFO(": PCI latency error detected at 0x%04zX.\n",
         i * sizeof(struct ipw2100_status));
 priv->fatal_error = IPW2100_ERR_C3_CORRUPTION;
 priv->net_dev->stats.rx_errors++;
 schedule_reset(priv);
}
