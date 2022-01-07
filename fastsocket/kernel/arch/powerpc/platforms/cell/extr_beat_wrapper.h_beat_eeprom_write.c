
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
typedef int s64 ;
typedef int b ;


 scalar_t__ BEAT_NVRW_CNT ;
 int HV_eeprom_write ;
 int beat_hcall_norets8 (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int memcpy (scalar_t__*,int *,int) ;

__attribute__((used)) static inline s64 beat_eeprom_write(u64 index, u64 length, u8 *buffer)
{
 u64 b[6];

 if (length > BEAT_NVRW_CNT)
  return -1;
 memcpy(b, buffer, sizeof(b));
 return beat_hcall_norets8(HV_eeprom_write, index, length,
  b[0], b[1], b[2], b[3], b[4], b[5]);
}
