
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int TW_STATUS_EXPECTED_BITS ;
 int TW_STATUS_UNEXPECTED_BITS ;

__attribute__((used)) static int twa_check_bits(u32 status_reg_value)
{
 int retval = 1;

 if ((status_reg_value & TW_STATUS_EXPECTED_BITS) != TW_STATUS_EXPECTED_BITS)
  goto out;
 if ((status_reg_value & TW_STATUS_UNEXPECTED_BITS) != 0)
  goto out;

 retval = 0;
out:
 return retval;
}
