
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa5246a_device {int dummy; } ;


 int COMMAND_END ;
 int EIO ;
 int R10_CURSER_COLUMN_8 ;
 unsigned char R8_DO_NOT_CLEAR_MEMORY ;
 int R9_CURSER_ROW_25 ;
 unsigned char ROW25_COLUMN8_PAGE_NOT_FOUND ;
 int SAA5246A_REGISTER_R8 ;
 scalar_t__ i2c_getdata (struct saa5246a_device*,int,unsigned char*) ;
 scalar_t__ i2c_senddata (struct saa5246a_device*,int ,unsigned char,int ,int ,unsigned char,...) ;

__attribute__((used)) static int saa5246a_clear_found_bit(struct saa5246a_device *t,
 unsigned char dau_no)
{
 unsigned char row_25_column_8;

 if (i2c_senddata(t, SAA5246A_REGISTER_R8,

  dau_no |
  R8_DO_NOT_CLEAR_MEMORY,

  R9_CURSER_ROW_25,

  R10_CURSER_COLUMN_8,

  COMMAND_END) ||
  i2c_getdata(t, 1, &row_25_column_8))
 {
  return -EIO;
 }
 row_25_column_8 |= ROW25_COLUMN8_PAGE_NOT_FOUND;
 if (i2c_senddata(t, SAA5246A_REGISTER_R8,

  dau_no |
  R8_DO_NOT_CLEAR_MEMORY,

  R9_CURSER_ROW_25,

  R10_CURSER_COLUMN_8,

  row_25_column_8,

  COMMAND_END))
 {
  return -EIO;
 }

 return 0;
}
