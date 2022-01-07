
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tx_compl_threshold; int tx_compl_timeout; } ;
struct TYPE_4__ {TYPE_1__ tx; } ;
struct wl1271 {TYPE_2__ conf; } ;
struct acx_tx_config_options {void* tx_compl_threshold; void* tx_compl_timeout; } ;


 int ACX_TX_CONFIG_OPT ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* cpu_to_le16 (int ) ;
 int kfree (struct acx_tx_config_options*) ;
 struct acx_tx_config_options* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct acx_tx_config_options*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_tx_config_options(struct wl1271 *wl)
{
 struct acx_tx_config_options *acx;
 int ret = 0;

 wl1271_debug(DEBUG_ACX, "acx tx config options");

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);

 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 acx->tx_compl_timeout = cpu_to_le16(wl->conf.tx.tx_compl_timeout);
 acx->tx_compl_threshold = cpu_to_le16(wl->conf.tx.tx_compl_threshold);
 ret = wl1271_cmd_configure(wl, ACX_TX_CONFIG_OPT, acx, sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("Setting of tx options failed: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
