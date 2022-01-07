
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct ath_regulatory {int alpha2; } ;
struct TYPE_13__ {int vif_num; int mem_blocks; } ;
struct TYPE_10__ {struct ath_regulatory regulatory; } ;
struct ar9170 {int registered; TYPE_7__* hw; TYPE_6__* udev; TYPE_5__* vif_priv; TYPE_4__ fw; int mem_bitmap; TYPE_1__ common; } ;
struct TYPE_11__ {int ht_supported; } ;
struct TYPE_18__ {TYPE_2__ ht_cap; } ;
struct TYPE_12__ {int ht_supported; } ;
struct TYPE_17__ {TYPE_3__ ht_cap; } ;
struct TYPE_16__ {int wiphy; } ;
struct TYPE_15__ {int dev; } ;
struct TYPE_14__ {int id; int * vif; } ;


 int BITS_PER_LONG ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int ) ;
 int ath_is_world_regd (struct ath_regulatory*) ;
 int ath_regd_init (struct ath_regulatory*,int ,int ) ;
 TYPE_9__ carl9170_band_2GHz ;
 TYPE_8__ carl9170_band_5GHz ;
 int carl9170_debugfs_register (struct ar9170*) ;
 int carl9170_led_init (struct ar9170*) ;
 int carl9170_led_register (struct ar9170*) ;
 int carl9170_parse_eeprom (struct ar9170*) ;
 int carl9170_read_eeprom (struct ar9170*) ;
 int carl9170_reg_notifier ;
 int carl9170_register_hwrng (struct ar9170*) ;
 int carl9170_register_wps_button (struct ar9170*) ;
 int carl9170_unregister (struct ar9170*) ;
 int dev_info (int *,char*,int ) ;
 int ieee80211_register_hw (TYPE_7__*) ;
 int kzalloc (int,int ) ;
 scalar_t__ modparam_noht ;
 int regulatory_hint (int ,int ) ;
 int roundup (int ,int ) ;
 int wiphy_name (int ) ;

int carl9170_register(struct ar9170 *ar)
{
 struct ath_regulatory *regulatory = &ar->common.regulatory;
 int err = 0, i;

 if (WARN_ON(ar->mem_bitmap))
  return -EINVAL;

 ar->mem_bitmap = kzalloc(roundup(ar->fw.mem_blocks, BITS_PER_LONG) *
     sizeof(unsigned long), GFP_KERNEL);

 if (!ar->mem_bitmap)
  return -ENOMEM;


 err = carl9170_read_eeprom(ar);
 if (err)
  return err;

 err = carl9170_parse_eeprom(ar);
 if (err)
  return err;

 err = ath_regd_init(regulatory, ar->hw->wiphy,
       carl9170_reg_notifier);
 if (err)
  return err;

 if (modparam_noht) {
  carl9170_band_2GHz.ht_cap.ht_supported = 0;
  carl9170_band_5GHz.ht_cap.ht_supported = 0;
 }

 for (i = 0; i < ar->fw.vif_num; i++) {
  ar->vif_priv[i].id = i;
  ar->vif_priv[i].vif = ((void*)0);
 }

 err = ieee80211_register_hw(ar->hw);
 if (err)
  return err;


 ar->registered = 1;

 if (!ath_is_world_regd(regulatory))
  regulatory_hint(ar->hw->wiphy, regulatory->alpha2);





 err = carl9170_led_init(ar);
 if (err)
  goto err_unreg;
 dev_info(&ar->udev->dev, "Atheros AR9170 is registered as '%s'\n",
   wiphy_name(ar->hw->wiphy));

 return 0;

err_unreg:
 carl9170_unregister(ar);
 return err;
}
