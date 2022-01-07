
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int s64 ;


 int BEAT_NVRW_CNT ;
 int HV_eeprom_read ;
 int beat_hcall6 (int ,int *,int ,int ) ;
 int memcpy (int *,int *,int ) ;

__attribute__((used)) static inline s64 beat_eeprom_read(u64 index, u64 length, u8 *buffer)
{
 u64 b[6];
 s64 ret;

 if (length > BEAT_NVRW_CNT)
  return -1;
 ret = beat_hcall6(HV_eeprom_read, b, index, length);
 memcpy(buffer, b, length);
 return ret;
}
