
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int num; } ;
struct sdio_device_id {scalar_t__ driver_data; int class; int device; int vendor; } ;
struct btmrvl_sdio_device {int firmware; int helper; } ;
struct btmrvl_sdio_card {struct btmrvl_private* priv; int firmware; int helper; struct sdio_func* func; } ;
struct btmrvl_private {int hw_wakeup_firmware; int hw_host_to_card; } ;


 int BT_ERR (char*) ;
 int BT_INFO (char*,int ,int ,int ,int ) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MODULE_BRINGUP_REQ ;
 struct btmrvl_private* btmrvl_add_card (struct btmrvl_sdio_card*) ;
 int btmrvl_sdio_disable_host_int (struct btmrvl_sdio_card*) ;
 scalar_t__ btmrvl_sdio_download_fw (struct btmrvl_sdio_card*) ;
 int btmrvl_sdio_enable_host_int (struct btmrvl_sdio_card*) ;
 int btmrvl_sdio_host_to_card ;
 scalar_t__ btmrvl_sdio_register_dev (struct btmrvl_sdio_card*) ;
 int btmrvl_sdio_unregister_dev (struct btmrvl_sdio_card*) ;
 int btmrvl_sdio_wakeup_fw ;
 int btmrvl_send_module_cfg_cmd (struct btmrvl_private*,int ) ;
 int kfree (struct btmrvl_sdio_card*) ;
 struct btmrvl_sdio_card* kzalloc (int,int ) ;
 int msleep (int) ;

__attribute__((used)) static int btmrvl_sdio_probe(struct sdio_func *func,
     const struct sdio_device_id *id)
{
 int ret = 0;
 struct btmrvl_private *priv = ((void*)0);
 struct btmrvl_sdio_card *card = ((void*)0);

 BT_INFO("vendor=0x%x, device=0x%x, class=%d, fn=%d",
   id->vendor, id->device, id->class, func->num);

 card = kzalloc(sizeof(*card), GFP_KERNEL);
 if (!card) {
  ret = -ENOMEM;
  goto done;
 }

 card->func = func;

 if (id->driver_data) {
  struct btmrvl_sdio_device *data = (void *) id->driver_data;
  card->helper = data->helper;
  card->firmware = data->firmware;
 }

 if (btmrvl_sdio_register_dev(card) < 0) {
  BT_ERR("Failed to register BT device!");
  ret = -ENODEV;
  goto free_card;
 }


 btmrvl_sdio_disable_host_int(card);

 if (btmrvl_sdio_download_fw(card)) {
  BT_ERR("Downloading firmware failed!");
  ret = -ENODEV;
  goto unreg_dev;
 }

 msleep(100);

 btmrvl_sdio_enable_host_int(card);

 priv = btmrvl_add_card(card);
 if (!priv) {
  BT_ERR("Initializing card failed!");
  ret = -ENODEV;
  goto disable_host_int;
 }

 card->priv = priv;


 priv->hw_host_to_card = btmrvl_sdio_host_to_card;
 priv->hw_wakeup_firmware = btmrvl_sdio_wakeup_fw;

 btmrvl_send_module_cfg_cmd(priv, MODULE_BRINGUP_REQ);

 return 0;

disable_host_int:
 btmrvl_sdio_disable_host_int(card);
unreg_dev:
 btmrvl_sdio_unregister_dev(card);
free_card:
 kfree(card);
done:
 return ret;
}
