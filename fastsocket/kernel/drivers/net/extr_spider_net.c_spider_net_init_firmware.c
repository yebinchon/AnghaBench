
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct spider_net_card {TYPE_1__* netdev; TYPE_2__* pdev; } ;
struct firmware {int size; int const* data; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int dev; } ;


 int ENOENT ;
 int SPIDER_NET_FIRMWARE_LEN ;
 int SPIDER_NET_FIRMWARE_NAME ;
 int dev_err (int *,char*) ;
 scalar_t__ netif_msg_probe (struct spider_net_card*) ;
 int * of_get_property (struct device_node*,char*,int*) ;
 struct device_node* pci_device_to_OF_node (TYPE_2__*) ;
 int release_firmware (struct firmware*) ;
 scalar_t__ request_firmware (struct firmware const**,int ,int *) ;
 int spider_net_download_firmware (struct spider_net_card*,int const*) ;

__attribute__((used)) static int
spider_net_init_firmware(struct spider_net_card *card)
{
 struct firmware *firmware = ((void*)0);
 struct device_node *dn;
 const u8 *fw_prop = ((void*)0);
 int err = -ENOENT;
 int fw_size;

 if (request_firmware((const struct firmware **)&firmware,
        SPIDER_NET_FIRMWARE_NAME, &card->pdev->dev) == 0) {
  if ( (firmware->size != SPIDER_NET_FIRMWARE_LEN) &&
       netif_msg_probe(card) ) {
   dev_err(&card->netdev->dev,
          "Incorrect size of spidernet firmware in " "filesystem. Looking in host firmware...\n");

   goto try_host_fw;
  }
  err = spider_net_download_firmware(card, firmware->data);

  release_firmware(firmware);
  if (err)
   goto try_host_fw;

  goto done;
 }

try_host_fw:
 dn = pci_device_to_OF_node(card->pdev);
 if (!dn)
  goto out_err;

 fw_prop = of_get_property(dn, "firmware", &fw_size);
 if (!fw_prop)
  goto out_err;

 if ( (fw_size != SPIDER_NET_FIRMWARE_LEN) &&
      netif_msg_probe(card) ) {
  dev_err(&card->netdev->dev,
         "Incorrect size of spidernet firmware in host firmware\n");
  goto done;
 }

 err = spider_net_download_firmware(card, fw_prop);

done:
 return err;
out_err:
 if (netif_msg_probe(card))
  dev_err(&card->netdev->dev,
         "Couldn't find spidernet firmware in filesystem " "or host firmware\n");

 return err;
}
