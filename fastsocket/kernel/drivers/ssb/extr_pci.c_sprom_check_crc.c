
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int EPROTO ;
 int const SSB_SPROM_REVISION_CRC ;
 int SSB_SPROM_REVISION_CRC_SHIFT ;
 int ssb_sprom_crc (int const*,size_t) ;

__attribute__((used)) static int sprom_check_crc(const u16 *sprom, size_t size)
{
 u8 crc;
 u8 expected_crc;
 u16 tmp;

 crc = ssb_sprom_crc(sprom, size);
 tmp = sprom[size - 1] & SSB_SPROM_REVISION_CRC;
 expected_crc = tmp >> SSB_SPROM_REVISION_CRC_SHIFT;
 if (crc != expected_crc)
  return -EPROTO;

 return 0;
}
