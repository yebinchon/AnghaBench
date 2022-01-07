
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct firmware {int size; scalar_t__ data; } ;
struct cx8802_dev {int core; TYPE_1__* pci; } ;
struct TYPE_2__ {int dev; } ;


 int BLACKBIRD_FIRM_IMAGE_SIZE ;
 int CX2341X_FIRM_ENC_FILENAME ;
 int IVTV_CMD_HW_BLOCKS_RST ;
 int IVTV_REG_APU ;
 int IVTV_REG_ENC_SDRAM_PRECHARGE ;
 int IVTV_REG_ENC_SDRAM_REFRESH ;
 int IVTV_REG_HW_BLOCKS ;
 int IVTV_REG_SPU ;
 int IVTV_REG_VPU ;
 int dprintk (int,char*,...) ;
 scalar_t__ memcmp (scalar_t__,unsigned char const*,int) ;
 int memory_read (int ,int,int*) ;
 int memory_write (int ,int,int) ;
 int msleep (int) ;
 int register_read (int ,int ,int*) ;
 int register_write (int ,int ,int) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,int *) ;

__attribute__((used)) static int blackbird_load_firmware(struct cx8802_dev *dev)
{
 static const unsigned char magic[8] = {
  0xa7, 0x0d, 0x00, 0x00, 0x66, 0xbb, 0x55, 0xaa
 };
 const struct firmware *firmware;
 int i, retval = 0;
 u32 value = 0;
 u32 checksum = 0;
 u32 *dataptr;

 retval = register_write(dev->core, IVTV_REG_VPU, 0xFFFFFFED);
 retval |= register_write(dev->core, IVTV_REG_HW_BLOCKS, IVTV_CMD_HW_BLOCKS_RST);
 retval |= register_write(dev->core, IVTV_REG_ENC_SDRAM_REFRESH, 0x80000640);
 retval |= register_write(dev->core, IVTV_REG_ENC_SDRAM_PRECHARGE, 0x1A);
 msleep(1);
 retval |= register_write(dev->core, IVTV_REG_APU, 0);

 if (retval < 0)
  dprintk(0, "Error with register_write\n");

 retval = request_firmware(&firmware, CX2341X_FIRM_ENC_FILENAME,
      &dev->pci->dev);


 if (retval != 0) {
  dprintk(0, "ERROR: Hotplug firmware request failed (%s).\n",
   CX2341X_FIRM_ENC_FILENAME);
  dprintk(0, "Please fix your hotplug setup, the board will "
   "not work without firmware loaded!\n");
  return -1;
 }

 if (firmware->size != BLACKBIRD_FIRM_IMAGE_SIZE) {
  dprintk(0, "ERROR: Firmware size mismatch (have %zd, expected %d)\n",
   firmware->size, BLACKBIRD_FIRM_IMAGE_SIZE);
  release_firmware(firmware);
  return -1;
 }

 if (0 != memcmp(firmware->data, magic, 8)) {
  dprintk(0, "ERROR: Firmware magic mismatch, wrong file?\n");
  release_firmware(firmware);
  return -1;
 }


 dprintk(1,"Loading firmware ...\n");
 dataptr = (u32*)firmware->data;
 for (i = 0; i < (firmware->size >> 2); i++) {
  value = *dataptr;
  checksum += ~value;
  memory_write(dev->core, i, value);
  dataptr++;
 }


 for (i--; i >= 0; i--) {
  memory_read(dev->core, i, &value);
  checksum -= ~value;
 }
 if (checksum) {
  dprintk(0, "ERROR: Firmware load failed (checksum mismatch).\n");
  release_firmware(firmware);
  return -1;
 }
 release_firmware(firmware);
 dprintk(0, "Firmware upload successful.\n");

 retval |= register_write(dev->core, IVTV_REG_HW_BLOCKS, IVTV_CMD_HW_BLOCKS_RST);
 retval |= register_read(dev->core, IVTV_REG_SPU, &value);
 retval |= register_write(dev->core, IVTV_REG_SPU, value & 0xFFFFFFFE);
 msleep(1);

 retval |= register_read(dev->core, IVTV_REG_VPU, &value);
 retval |= register_write(dev->core, IVTV_REG_VPU, value & 0xFFFFFFE8);

 if (retval < 0)
  dprintk(0, "Error with register_write\n");
 return 0;
}
