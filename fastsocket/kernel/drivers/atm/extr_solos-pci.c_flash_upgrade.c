
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct solos_card {scalar_t__ fpga_version; TYPE_1__* dev; scalar_t__ config_regs; int fw_wq; } ;
struct firmware {int size; scalar_t__ data; } ;
struct TYPE_2__ {int dev; } ;


 int ENOENT ;
 int EPERM ;
 scalar_t__ FLASH_BLOCK ;
 scalar_t__ FLASH_BUF ;
 scalar_t__ FLASH_BUSY ;
 scalar_t__ FLASH_MODE ;
 int FPGA_BLOCK ;
 scalar_t__ FPGA_MODE ;
 scalar_t__ LEGACY_BUFFERS ;
 scalar_t__ RX_BUF (struct solos_card*,int) ;
 int SOLOS_BLOCK ;
 scalar_t__ WRITE_FLASH ;
 int dev_info (int *,char*,...) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int release_firmware (struct firmware const*) ;
 scalar_t__ request_firmware (struct firmware const**,char const*,int *) ;
 int swahb32p (int*) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int flash_upgrade(struct solos_card *card, int chip)
{
 const struct firmware *fw;
 const char *fw_name;
 uint32_t data32 = 0;
 int blocksize = 0;
 int numblocks = 0;
 int offset;

 if (chip == 0) {
  fw_name = "solos-FPGA.bin";
  blocksize = FPGA_BLOCK;
 }

 if (chip == 1) {
  fw_name = "solos-Firmware.bin";
  blocksize = SOLOS_BLOCK;
 }

 if (chip == 2){
  if (card->fpga_version > LEGACY_BUFFERS){
   fw_name = "solos-db-FPGA.bin";
   blocksize = FPGA_BLOCK;
  } else {
   dev_info(&card->dev->dev, "FPGA version doesn't support daughter board upgrades\n");
   return -EPERM;
  }
 }

 if (chip == 3){
  if (card->fpga_version > LEGACY_BUFFERS){
   fw_name = "solos-Firmware.bin";
   blocksize = SOLOS_BLOCK;
  } else {
  dev_info(&card->dev->dev, "FPGA version doesn't support daughter board upgrades\n");
  return -EPERM;
  }
 }

 if (request_firmware(&fw, fw_name, &card->dev->dev))
  return -ENOENT;

 dev_info(&card->dev->dev, "Flash upgrade starting\n");

 numblocks = fw->size / blocksize;
 dev_info(&card->dev->dev, "Firmware size: %zd\n", fw->size);
 dev_info(&card->dev->dev, "Number of blocks: %d\n", numblocks);

 dev_info(&card->dev->dev, "Changing FPGA to Update mode\n");
 iowrite32(1, card->config_regs + FPGA_MODE);
 data32 = ioread32(card->config_regs + FPGA_MODE);


 if(chip == 0 || chip == 2)
  dev_info(&card->dev->dev, "Set FPGA Flash mode to FPGA Chip Erase\n");
 if(chip == 1 || chip == 3)
  dev_info(&card->dev->dev, "Set FPGA Flash mode to Solos Chip Erase\n");
 iowrite32((chip * 2), card->config_regs + FLASH_MODE);


 iowrite32(1, card->config_regs + WRITE_FLASH);
 wait_event(card->fw_wq, !ioread32(card->config_regs + FLASH_BUSY));

 for (offset = 0; offset < fw->size; offset += blocksize) {
  int i;


  iowrite32(0, card->config_regs + WRITE_FLASH);



  iowrite32(((chip * 2) + 1), card->config_regs + FLASH_MODE);


  for(i = 0; i < blocksize; i += 4) {
   uint32_t word = swahb32p((uint32_t *)(fw->data + offset + i));
   if(card->fpga_version > LEGACY_BUFFERS)
    iowrite32(word, FLASH_BUF + i);
   else
    iowrite32(word, RX_BUF(card, 3) + i);
  }


  iowrite32(offset / blocksize, card->config_regs + FLASH_BLOCK);
  iowrite32(1, card->config_regs + WRITE_FLASH);
  wait_event(card->fw_wq, !ioread32(card->config_regs + FLASH_BUSY));
 }

 release_firmware(fw);
 iowrite32(0, card->config_regs + WRITE_FLASH);
 iowrite32(0, card->config_regs + FPGA_MODE);
 iowrite32(0, card->config_regs + FLASH_MODE);
 dev_info(&card->dev->dev, "Returning FPGA to Data mode\n");
 return 0;
}
