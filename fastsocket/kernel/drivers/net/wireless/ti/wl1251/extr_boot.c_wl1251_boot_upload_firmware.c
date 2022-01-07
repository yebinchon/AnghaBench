
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl1251 {int* fw; } ;


 int CHIP_ID_B ;
 size_t CHUNK_SIZE ;
 int DEBUG_BOOT ;
 int EIO ;
 int ENOMEM ;
 int FW_HDR_SIZE ;
 int GFP_KERNEL ;
 int WL1251_PART_DOWN_MEM_SIZE ;
 int WL1251_PART_DOWN_MEM_START ;
 int WL1251_PART_DOWN_REG_SIZE ;
 int WL1251_PART_DOWN_REG_START ;
 int kfree (int*) ;
 int* kmalloc (size_t,int ) ;
 int memcpy (int*,int*,size_t) ;
 int wl1251_debug (int ,char*,...) ;
 int wl1251_error (char*) ;
 int wl1251_mem_write (struct wl1251*,int,int*,size_t) ;
 int wl1251_reg_read32 (struct wl1251*,int ) ;
 int wl1251_set_partition (struct wl1251*,int,int,int ,int ) ;

__attribute__((used)) static int wl1251_boot_upload_firmware(struct wl1251 *wl)
{
 int addr, chunk_num, partition_limit;
 size_t fw_data_len, len;
 u8 *p, *buf;



 wl1251_debug(DEBUG_BOOT, "chip id before fw upload: 0x%x",
       wl1251_reg_read32(wl, CHIP_ID_B));


 fw_data_len = (wl->fw[4] << 24) | (wl->fw[5] << 16) |
  (wl->fw[6] << 8) | (wl->fw[7]);

 wl1251_debug(DEBUG_BOOT, "fw_data_len %zu chunk_size %d", fw_data_len,
  CHUNK_SIZE);

 if ((fw_data_len % 4) != 0) {
  wl1251_error("firmware length not multiple of four");
  return -EIO;
 }

 buf = kmalloc(CHUNK_SIZE, GFP_KERNEL);
 if (!buf) {
  wl1251_error("allocation for firmware upload chunk failed");
  return -ENOMEM;
 }

 wl1251_set_partition(wl, WL1251_PART_DOWN_MEM_START,
        WL1251_PART_DOWN_MEM_SIZE,
        WL1251_PART_DOWN_REG_START,
        WL1251_PART_DOWN_REG_SIZE);


 chunk_num = 0;
 partition_limit = WL1251_PART_DOWN_MEM_SIZE;

 while (chunk_num < fw_data_len / CHUNK_SIZE) {

  addr = WL1251_PART_DOWN_MEM_START +
   (chunk_num + 2) * CHUNK_SIZE;
  if (addr > partition_limit) {
   addr = WL1251_PART_DOWN_MEM_START +
    chunk_num * CHUNK_SIZE;
   partition_limit = chunk_num * CHUNK_SIZE +
    WL1251_PART_DOWN_MEM_SIZE;
   wl1251_set_partition(wl,
          addr,
          WL1251_PART_DOWN_MEM_SIZE,
          WL1251_PART_DOWN_REG_START,
          WL1251_PART_DOWN_REG_SIZE);
  }


  addr = WL1251_PART_DOWN_MEM_START + chunk_num * CHUNK_SIZE;
  p = wl->fw + FW_HDR_SIZE + chunk_num * CHUNK_SIZE;
  wl1251_debug(DEBUG_BOOT, "uploading fw chunk 0x%p to 0x%x",
        p, addr);


  len = CHUNK_SIZE;
  memcpy(buf, p, len);
  wl1251_mem_write(wl, addr, buf, len);

  chunk_num++;
 }


 addr = WL1251_PART_DOWN_MEM_START + chunk_num * CHUNK_SIZE;
 p = wl->fw + FW_HDR_SIZE + chunk_num * CHUNK_SIZE;


 len = fw_data_len % CHUNK_SIZE;
 memcpy(buf, p, len);

 wl1251_debug(DEBUG_BOOT, "uploading fw last chunk (%zu B) 0x%p to 0x%x",
       len, p, addr);
 wl1251_mem_write(wl, addr, buf, len);

 kfree(buf);

 return 0;
}
