
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int TW_Device_Extension ;


 scalar_t__ TW_STATUS_ERRORS (int ) ;
 int TW_STATUS_REG_ADDR (int *) ;
 int inl (int ) ;
 scalar_t__ tw_check_bits (int ) ;
 int tw_decode_bits (int *,int ,int ) ;

__attribute__((used)) static int tw_check_errors(TW_Device_Extension *tw_dev)
{
 u32 status_reg_value;

 status_reg_value = inl(TW_STATUS_REG_ADDR(tw_dev));

 if (TW_STATUS_ERRORS(status_reg_value) || tw_check_bits(status_reg_value)) {
  tw_decode_bits(tw_dev, status_reg_value, 0);
  return 1;
 }

 return 0;
}
