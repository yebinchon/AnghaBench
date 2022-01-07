
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdebug_dev_info {int dummy; } ;


 int ADDR_OUT_OF_RANGE ;
 int ILLEGAL_REQUEST ;
 int INVALID_FIELD_IN_CDB ;
 int check_condition_result ;
 int mk_sense_buffer (struct sdebug_dev_info*,int ,int ,int ) ;
 unsigned long long sdebug_capacity ;
 unsigned int sdebug_store_sectors ;

__attribute__((used)) static int check_device_access_params(struct sdebug_dev_info *devi,
          unsigned long long lba, unsigned int num)
{
 if (lba + num > sdebug_capacity) {
  mk_sense_buffer(devi, ILLEGAL_REQUEST, ADDR_OUT_OF_RANGE, 0);
  return check_condition_result;
 }

 if (num > sdebug_store_sectors) {
  mk_sense_buffer(devi, ILLEGAL_REQUEST, INVALID_FIELD_IN_CDB, 0);
  return check_condition_result;
 }
 return 0;
}
