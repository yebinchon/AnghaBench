
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int temp ;
struct spi_device {int dev; } ;
struct if_spi_card {int helper_fw_name; struct spi_device* spi; } ;
struct firmware {int size; int * data; } ;


 int FIRMWARE_DNLD_OK ;
 int HELPER_FW_LOAD_CHUNK_SZ ;
 int IF_SPI_CARD_INT_CAUSE_REG ;
 int IF_SPI_CIC_CMD_DOWNLOAD_OVER ;
 int IF_SPI_CMD_RDWRPORT_REG ;
 int IF_SPI_HIST_CMD_DOWNLOAD_RDY ;
 int IF_SPI_HOST_INT_STATUS_REG ;
 int IF_SPI_SCRATCH_1_REG ;
 int LBS_DEB_SPI ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_deb_spi (char*) ;
 int lbs_pr_err (char*,int) ;
 int mdelay (int) ;
 int memcpy (int *,int const*,int ) ;
 int memset (int *,int ,int) ;
 int min (int,int) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,int *) ;
 int spu_set_interrupt_mode (struct if_spi_card*,int,int ) ;
 int spu_wait_for_u16 (struct if_spi_card*,int ,int ,int ) ;
 int spu_write (struct if_spi_card*,int ,int *,int) ;
 int spu_write_u16 (struct if_spi_card*,int ,int) ;

__attribute__((used)) static int if_spi_prog_helper_firmware(struct if_spi_card *card)
{
 int err = 0;
 const struct firmware *firmware = ((void*)0);
 int bytes_remaining;
 const u8 *fw;
 u8 temp[HELPER_FW_LOAD_CHUNK_SZ];
 struct spi_device *spi = card->spi;

 lbs_deb_enter(LBS_DEB_SPI);

 err = spu_set_interrupt_mode(card, 1, 0);
 if (err)
  goto out;

 err = request_firmware(&firmware, card->helper_fw_name, &spi->dev);
 if (err) {
  lbs_pr_err("request_firmware failed with err = %d\n", err);
  goto out;
 }
 bytes_remaining = firmware->size;
 fw = firmware->data;


 while (bytes_remaining > 0) {


  err = spu_write_u16(card, IF_SPI_SCRATCH_1_REG,
     HELPER_FW_LOAD_CHUNK_SZ);
  if (err)
   goto release_firmware;

  err = spu_wait_for_u16(card, IF_SPI_HOST_INT_STATUS_REG,
     IF_SPI_HIST_CMD_DOWNLOAD_RDY,
     IF_SPI_HIST_CMD_DOWNLOAD_RDY);
  if (err)
   goto release_firmware;



  memset(temp, 0, sizeof(temp));
  memcpy(temp, fw,
         min(bytes_remaining, HELPER_FW_LOAD_CHUNK_SZ));
  mdelay(10);
  err = spu_write(card, IF_SPI_CMD_RDWRPORT_REG,
     temp, HELPER_FW_LOAD_CHUNK_SZ);
  if (err)
   goto release_firmware;


  err = spu_write_u16(card, IF_SPI_HOST_INT_STATUS_REG, 0);
  if (err)
   goto release_firmware;
  err = spu_write_u16(card, IF_SPI_CARD_INT_CAUSE_REG,
           IF_SPI_CIC_CMD_DOWNLOAD_OVER);
  if (err)
   goto release_firmware;
  bytes_remaining -= HELPER_FW_LOAD_CHUNK_SZ;
  fw += HELPER_FW_LOAD_CHUNK_SZ;
 }




 err = spu_write_u16(card, IF_SPI_SCRATCH_1_REG, FIRMWARE_DNLD_OK);
 if (err)
  goto release_firmware;
 err = spu_write_u16(card, IF_SPI_HOST_INT_STATUS_REG, 0);
 if (err)
  goto release_firmware;
 err = spu_write_u16(card, IF_SPI_CARD_INT_CAUSE_REG,
    IF_SPI_CIC_CMD_DOWNLOAD_OVER);
  goto release_firmware;

 lbs_deb_spi("waiting for helper to boot...\n");

release_firmware:
 release_firmware(firmware);
out:
 if (err)
  lbs_pr_err("failed to load helper firmware (err=%d)\n", err);
 lbs_deb_leave_args(LBS_DEB_SPI, "err %d", err);
 return err;
}
