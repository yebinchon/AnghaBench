
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds2782_info {int dummy; } ;
typedef int s16 ;


 int DS2782_REG_TEMP_MSB ;
 int ds2782_read_reg16 (struct ds2782_info*,int ,int*) ;

__attribute__((used)) static int ds2782_get_temp(struct ds2782_info *info, int *temp)
{
 s16 raw;
 int err;







 err = ds2782_read_reg16(info, DS2782_REG_TEMP_MSB, &raw);
 if (err)
  return err;
 *temp = ((raw / 32) * 125) / 100;
 return 0;
}
