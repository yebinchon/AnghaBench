
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rt2x00_dev {int dummy; } ;


 int FW_BAD_CRC ;
 int FW_BAD_LENGTH ;
 int FW_OK ;
 int crc_itu_t (int ,int const*,size_t const) ;
 int crc_itu_t_byte (int,int ) ;

__attribute__((used)) static int rt73usb_check_firmware(struct rt2x00_dev *rt2x00dev,
      const u8 *data, const size_t len)
{
 u16 fw_crc;
 u16 crc;




 if (len != 2048)
  return FW_BAD_LENGTH;






 fw_crc = (data[len - 2] << 8 | data[len - 1]);




 crc = crc_itu_t(0, data, len - 2);
 crc = crc_itu_t_byte(crc, 0);
 crc = crc_itu_t_byte(crc, 0);

 return (fw_crc == crc) ? FW_OK : FW_BAD_CRC;
}
