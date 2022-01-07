
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct flexcop_device {int dummy; } ;


 int EINVAL ;
 int FC_READ ;
 scalar_t__ calc_lrc (scalar_t__*,int) ;
 int flexcop_eeprom_request (struct flexcop_device*,int ,int,scalar_t__*,int,int) ;

__attribute__((used)) static int flexcop_eeprom_lrc_read(struct flexcop_device *fc, u16 addr,
  u8 *buf, u16 len, int retries)
{
 int ret = flexcop_eeprom_request(fc, FC_READ, addr, buf, len, retries);
 if (ret == 0)
  if (calc_lrc(buf, len - 1) != buf[len - 1])
   ret = -EINVAL;
 return ret;
}
