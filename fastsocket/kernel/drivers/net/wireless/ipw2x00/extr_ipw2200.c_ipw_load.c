
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char u8 ;
struct ipw_priv {int eeprom_delay; TYPE_2__* rxq; int status; TYPE_1__* ieee; } ;
struct ipw_fw {char* data; int fw_size; int ucode_size; int boot_size; } ;
struct firmware {scalar_t__ data; } ;
struct TYPE_6__ {int read; } ;
struct TYPE_5__ {int iw_mode; } ;


 int EINVAL ;
 int EIO ;
 int IPW_DEBUG_INFO (char*,int) ;
 int IPW_EEPROM_LOAD_DISABLE ;
 int IPW_ERROR (char*,...) ;
 int IPW_INTA_BIT_FW_INITIALIZATION_DONE ;
 int IPW_INTA_BIT_PARITY_ERROR ;
 int IPW_INTA_MASK_ALL ;
 int IPW_INTA_MASK_R ;
 int IPW_INTA_RW ;
 scalar_t__ IPW_NIC_SRAM_LOWER_BOUND ;
 scalar_t__ IPW_NIC_SRAM_UPPER_BOUND ;
 int IPW_RX_READ_INDEX ;
 int IPW_WARNING (char*) ;



 int STATUS_INT_ENABLED ;
 int fw_loaded ;
 int ipw_eeprom_init_sram (struct ipw_priv*) ;
 int ipw_enable_interrupts (struct ipw_priv*) ;
 int ipw_get_fw (struct ipw_priv*,struct firmware const**,char*) ;
 int ipw_load_firmware (struct ipw_priv*,char*,size_t) ;
 int ipw_load_ucode (struct ipw_priv*,char*,size_t) ;
 int ipw_poll_bit (struct ipw_priv*,int ,int ,int) ;
 int ipw_queue_reset (struct ipw_priv*) ;
 int ipw_read32 (struct ipw_priv*,int ) ;
 int ipw_reset_nic (struct ipw_priv*) ;
 TYPE_2__* ipw_rx_queue_alloc (struct ipw_priv*) ;
 int ipw_rx_queue_free (struct ipw_priv*,TYPE_2__*) ;
 int ipw_rx_queue_replenish (struct ipw_priv*) ;
 int ipw_rx_queue_reset (struct ipw_priv*,TYPE_2__*) ;
 int ipw_start_nic (struct ipw_priv*) ;
 int ipw_stop_nic (struct ipw_priv*) ;
 int ipw_tx_queue_free (struct ipw_priv*) ;
 int ipw_write32 (struct ipw_priv*,int ,int ) ;
 int ipw_zero_memory (struct ipw_priv*,scalar_t__,scalar_t__) ;
 size_t le32_to_cpu (int ) ;
 int release_firmware (struct firmware const*) ;

__attribute__((used)) static int ipw_load(struct ipw_priv *priv)
{

 const struct firmware *raw = ((void*)0);

 struct ipw_fw *fw;
 u8 *boot_img, *ucode_img, *fw_img;
 u8 *name = ((void*)0);
 int rc = 0, retries = 3;

 switch (priv->ieee->iw_mode) {
 case 130:
  name = "ipw2200-ibss.fw";
  break;





 case 129:
  name = "ipw2200-bss.fw";
  break;
 }

 if (!name) {
  rc = -EINVAL;
  goto error;
 }




  rc = ipw_get_fw(priv, &raw, name);
  if (rc < 0)
   goto error;




 fw = (void *)raw->data;
 boot_img = &fw->data[0];
 ucode_img = &fw->data[le32_to_cpu(fw->boot_size)];
 fw_img = &fw->data[le32_to_cpu(fw->boot_size) +
      le32_to_cpu(fw->ucode_size)];

 if (rc < 0)
  goto error;

 if (!priv->rxq)
  priv->rxq = ipw_rx_queue_alloc(priv);
 else
  ipw_rx_queue_reset(priv, priv->rxq);
 if (!priv->rxq) {
  IPW_ERROR("Unable to initialize Rx queue\n");
  goto error;
 }

      retry:

 ipw_write32(priv, IPW_INTA_MASK_R, ~IPW_INTA_MASK_ALL);
 priv->status &= ~STATUS_INT_ENABLED;


 ipw_write32(priv, IPW_INTA_RW, IPW_INTA_MASK_ALL);

 ipw_stop_nic(priv);

 rc = ipw_reset_nic(priv);
 if (rc < 0) {
  IPW_ERROR("Unable to reset NIC\n");
  goto error;
 }

 ipw_zero_memory(priv, IPW_NIC_SRAM_LOWER_BOUND,
   IPW_NIC_SRAM_UPPER_BOUND - IPW_NIC_SRAM_LOWER_BOUND);


 rc = ipw_load_firmware(priv, boot_img, le32_to_cpu(fw->boot_size));
 if (rc < 0) {
  IPW_ERROR("Unable to load boot firmware: %d\n", rc);
  goto error;
 }


 ipw_start_nic(priv);


 rc = ipw_poll_bit(priv, IPW_INTA_RW,
     IPW_INTA_BIT_FW_INITIALIZATION_DONE, 500);
 if (rc < 0) {
  IPW_ERROR("device failed to boot initial fw image\n");
  goto error;
 }
 IPW_DEBUG_INFO("initial device response after %dms\n", rc);


 ipw_write32(priv, IPW_INTA_RW, IPW_INTA_BIT_FW_INITIALIZATION_DONE);


 rc = ipw_load_ucode(priv, ucode_img, le32_to_cpu(fw->ucode_size));
 if (rc < 0) {
  IPW_ERROR("Unable to load ucode: %d\n", rc);
  goto error;
 }


 ipw_stop_nic(priv);


 rc = ipw_load_firmware(priv, fw_img, le32_to_cpu(fw->fw_size));
 if (rc < 0) {
  IPW_ERROR("Unable to load firmware: %d\n", rc);
  goto error;
 }




 ipw_write32(priv, IPW_EEPROM_LOAD_DISABLE, 0);

 rc = ipw_queue_reset(priv);
 if (rc < 0) {
  IPW_ERROR("Unable to initialize queues\n");
  goto error;
 }


 ipw_write32(priv, IPW_INTA_MASK_R, ~IPW_INTA_MASK_ALL);

 ipw_write32(priv, IPW_INTA_RW, IPW_INTA_MASK_ALL);


 ipw_start_nic(priv);

 if (ipw_read32(priv, IPW_INTA_RW) & IPW_INTA_BIT_PARITY_ERROR) {
  if (retries > 0) {
   IPW_WARNING("Parity error.  Retrying init.\n");
   retries--;
   goto retry;
  }

  IPW_ERROR("TODO: Handle parity error -- schedule restart?\n");
  rc = -EIO;
  goto error;
 }


 rc = ipw_poll_bit(priv, IPW_INTA_RW,
     IPW_INTA_BIT_FW_INITIALIZATION_DONE, 500);
 if (rc < 0) {
  IPW_ERROR("device failed to start within 500ms\n");
  goto error;
 }
 IPW_DEBUG_INFO("device response after %dms\n", rc);


 ipw_write32(priv, IPW_INTA_RW, IPW_INTA_BIT_FW_INITIALIZATION_DONE);


 priv->eeprom_delay = 1;
 ipw_eeprom_init_sram(priv);


 ipw_enable_interrupts(priv);


 ipw_rx_queue_replenish(priv);

 ipw_write32(priv, IPW_RX_READ_INDEX, priv->rxq->read);


 ipw_write32(priv, IPW_INTA_RW, IPW_INTA_MASK_ALL);


 release_firmware(raw);

 return 0;

      error:
 if (priv->rxq) {
  ipw_rx_queue_free(priv, priv->rxq);
  priv->rxq = ((void*)0);
 }
 ipw_tx_queue_free(priv);
 release_firmware(raw);





 return rc;
}
