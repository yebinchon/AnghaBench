
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct if_sdio_card {TYPE_1__* func; int ioport; int firmware; } ;
struct firmware {int* data; size_t size; } ;
struct TYPE_6__ {int dev; } ;


 int EIO ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int GFP_KERNEL ;
 unsigned long HZ ;
 int IF_SDIO_DL_RDY ;
 scalar_t__ IF_SDIO_FIRMWARE_OK ;
 int IF_SDIO_IO_RDY ;
 scalar_t__ IF_SDIO_RD_BASE ;
 scalar_t__ IF_SDIO_STATUS ;
 int LBS_DEB_SDIO ;
 scalar_t__ if_sdio_read_scratch (struct if_sdio_card*,int*) ;
 unsigned long jiffies ;
 int kfree (int*) ;
 int* kzalloc (int,int ) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_deb_sdio (char*) ;
 int lbs_pr_err (char*) ;
 int mdelay (int) ;
 int memcpy (int*,int const*,scalar_t__) ;
 scalar_t__ min (size_t,size_t) ;
 int msleep (int) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,int *) ;
 int roundup (scalar_t__,int) ;
 int sdio_claim_host (TYPE_1__*) ;
 int sdio_readb (TYPE_1__*,scalar_t__,int*) ;
 int sdio_release_host (TYPE_1__*) ;
 int sdio_set_block_size (TYPE_1__*,int) ;
 int sdio_writesb (TYPE_1__*,int ,int*,int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int if_sdio_prog_real(struct if_sdio_card *card)
{
 int ret;
 u8 status;
 const struct firmware *fw;
 unsigned long timeout;
 u8 *chunk_buffer;
 u32 chunk_size;
 const u8 *firmware;
 size_t size, req_size;

 lbs_deb_enter(LBS_DEB_SDIO);

 ret = request_firmware(&fw, card->firmware, &card->func->dev);
 if (ret) {
  lbs_pr_err("can't load firmware\n");
  goto out;
 }

 chunk_buffer = kzalloc(512, GFP_KERNEL);
 if (!chunk_buffer) {
  ret = -ENOMEM;
  goto release_fw;
 }

 sdio_claim_host(card->func);

 ret = sdio_set_block_size(card->func, 32);
 if (ret)
  goto release;

 firmware = fw->data;
 size = fw->size;

 while (size) {
  timeout = jiffies + HZ;
  while (1) {
   status = sdio_readb(card->func, IF_SDIO_STATUS, &ret);
   if (ret)
    goto release;
   if ((status & IF_SDIO_IO_RDY) &&
     (status & IF_SDIO_DL_RDY))
    break;
   if (time_after(jiffies, timeout)) {
    ret = -ETIMEDOUT;
    goto release;
   }
   mdelay(1);
  }

  req_size = sdio_readb(card->func, IF_SDIO_RD_BASE, &ret);
  if (ret)
   goto release;

  req_size |= sdio_readb(card->func, IF_SDIO_RD_BASE + 1, &ret) << 8;
  if (ret)
   goto release;



  if (req_size == 0) {
   lbs_deb_sdio("firmware helper gave up early\n");
   ret = -EIO;
   goto release;
  }

  if (req_size & 0x01) {
   lbs_deb_sdio("firmware helper signalled error\n");
   ret = -EIO;
   goto release;
  }

  if (req_size > size)
   req_size = size;

  while (req_size) {
   chunk_size = min(req_size, (size_t)512);

   memcpy(chunk_buffer, firmware, chunk_size);




   ret = sdio_writesb(card->func, card->ioport,
    chunk_buffer, roundup(chunk_size, 32));
   if (ret)
    goto release;

   firmware += chunk_size;
   size -= chunk_size;
   req_size -= chunk_size;
  }
 }

 ret = 0;

 lbs_deb_sdio("waiting for firmware to boot...\n");


 timeout = jiffies + HZ;
 while (1) {
  u16 scratch;

  scratch = if_sdio_read_scratch(card, &ret);
  if (ret)
   goto release;

  if (scratch == IF_SDIO_FIRMWARE_OK)
   break;

  if (time_after(jiffies, timeout)) {
   ret = -ETIMEDOUT;
   goto release;
  }

  msleep(10);
 }

 ret = 0;

release:
 sdio_release_host(card->func);
 kfree(chunk_buffer);
release_fw:
 release_firmware(fw);

out:
 if (ret)
  lbs_pr_err("failed to load firmware\n");

 lbs_deb_leave_args(LBS_DEB_SDIO, "ret %d", ret);

 return ret;
}
