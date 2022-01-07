
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int tx_energy_detection; } ;
struct TYPE_4__ {int rx_cca_threshold; } ;
struct TYPE_6__ {TYPE_2__ tx; TYPE_1__ rx; } ;
struct wl1271 {TYPE_3__ conf; } ;
struct acx_energy_detection {int tx_energy_detection; int rx_cca_threshold; } ;


 int ACX_CCA_THRESHOLD ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cpu_to_le16 (int ) ;
 int kfree (struct acx_energy_detection*) ;
 struct acx_energy_detection* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct acx_energy_detection*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_cca_threshold(struct wl1271 *wl)
{
 struct acx_energy_detection *detection;
 int ret;

 wl1271_debug(DEBUG_ACX, "acx cca threshold");

 detection = kzalloc(sizeof(*detection), GFP_KERNEL);
 if (!detection) {
  ret = -ENOMEM;
  goto out;
 }

 detection->rx_cca_threshold = cpu_to_le16(wl->conf.rx.rx_cca_threshold);
 detection->tx_energy_detection = wl->conf.tx.tx_energy_detection;

 ret = wl1271_cmd_configure(wl, ACX_CCA_THRESHOLD,
       detection, sizeof(*detection));
 if (ret < 0)
  wl1271_warning("failed to set cca threshold: %d", ret);

out:
 kfree(detection);
 return ret;
}
