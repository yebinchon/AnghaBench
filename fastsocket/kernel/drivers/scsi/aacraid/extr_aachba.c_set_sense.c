
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sense_data {int dummy; } ;


 int ILLEGAL_REQUEST ;
 int SENCODE_INVALID_CDB_FIELD ;

__attribute__((used)) static inline void set_sense(struct sense_data *sense_data, u8 sense_key,
 u8 sense_code, u8 a_sense_code, u8 bit_pointer, u16 field_pointer)
{
 u8 *sense_buf = (u8 *)sense_data;

 sense_buf[0] = 0x70;
 sense_buf[1] = 0;

 sense_buf[2] = sense_key;

 sense_buf[12] = sense_code;
 sense_buf[13] = a_sense_code;

 if (sense_key == ILLEGAL_REQUEST) {
  sense_buf[7] = 10;

  sense_buf[15] = bit_pointer;

  if (sense_code == SENCODE_INVALID_CDB_FIELD)
   sense_buf[15] |= 0xc0;

  sense_buf[16] = field_pointer >> 8;
  sense_buf[17] = field_pointer;
 } else
  sense_buf[7] = 6;
}
