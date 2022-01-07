
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds2782_info {int dummy; } ;


 int DS2782_REG_RARC ;
 int ds2782_read_reg (struct ds2782_info*,int ,int*) ;

__attribute__((used)) static int ds2782_get_capacity(struct ds2782_info *info, int *capacity)
{
 int err;
 u8 raw;

 err = ds2782_read_reg(info, DS2782_REG_RARC, &raw);
 if (err)
  return err;
 *capacity = raw;
 return raw;
}
