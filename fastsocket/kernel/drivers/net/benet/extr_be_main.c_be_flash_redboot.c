
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int be_cmd_get_flash_crc (struct be_adapter*,int *,int) ;
 int dev_err (int *,char*) ;
 int memcmp (int *,int const*,int) ;

__attribute__((used)) static bool be_flash_redboot(struct be_adapter *adapter,
   const u8 *p, u32 img_start, int image_size,
   int hdr_size)
{
 u32 crc_offset;
 u8 flashed_crc[4];
 int status;

 crc_offset = hdr_size + img_start + image_size - 4;

 p += crc_offset;

 status = be_cmd_get_flash_crc(adapter, flashed_crc,
   (image_size - 4));
 if (status) {
  dev_err(&adapter->pdev->dev,
  "could not get crc from flash, not flashing redboot\n");
  return 0;
 }


 if (!memcmp(flashed_crc, p, 4))
  return 0;
 else
  return 1;
}
